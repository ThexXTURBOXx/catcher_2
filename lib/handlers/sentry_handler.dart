import 'dart:io';
import 'package:catcher_2/model/platform_type.dart';
import 'package:catcher_2/model/report.dart';
import 'package:catcher_2/model/report_handler.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sentry/sentry.dart';

class SentryHandler extends ReportHandler {
  SentryHandler(
    this.sentryClient, {
    this.serverName = 'Catcher 2',
    this.loggerName = 'Catcher 2',
    this.userContext,
    this.enableDeviceParameters = true,
    this.enableApplicationParameters = true,
    this.enableCustomParameters = true,
    this.printLogs = true,
    this.customEnvironment,
    this.customRelease,
  });

  /// Sentry Client instance
  final SentryClient sentryClient;
  final String serverName;
  final String loggerName;

  /// User data
  SentryUser? userContext;

  /// Enable device parameters to be generated by Catcher 2
  final bool enableDeviceParameters;

  /// Enable application parameters to be generated by Catcher 2
  final bool enableApplicationParameters;

  /// Enable custom parameters to be generated by Catcher 2
  final bool enableCustomParameters;

  /// Custom environment, if null, Catcher 2 will generate it
  final String? customEnvironment;

  /// Custom release, if null, Catcher 2 will generate it
  final String? customRelease;

  /// Enable additional logs printing
  final bool printLogs;

  @override
  Future<bool> handle(Report report, BuildContext? context) async {
    try {
      _printLog('Logging to sentry...');

      final tags = <String, dynamic>{};
      if (enableApplicationParameters) {
        tags.addAll(report.applicationParameters);
      }
      if (enableDeviceParameters) {
        tags.addAll(report.deviceParameters);
      }
      if (enableCustomParameters) {
        tags.addAll(report.customParameters);
      }

      final event = buildEvent(report, tags);

      // If we have a screenshot and we're not in web, then upload screenshot
      // to Sentry. Screenshot isn't supported in web (not by Sentry or catcher)
      // and the code relies on File from dart:io that does not work in web
      // either because we do not have access to the file system in web.
      SentryAttachment? screenshotAttachment;
      File? screenshotFile;
      try {
        if (report.screenshot != null && !kIsWeb) {
          final screenshotPath = report.screenshot!.path;
          screenshotFile = File(screenshotPath);
          final bytes = await screenshotFile.readAsBytes();
          screenshotAttachment = SentryAttachment.fromScreenshotData(bytes);
          _printLog('Created screenshot attachment');
        }
      } catch (exception, stackTrace) {
        _printLog('Failed to read screenshot data: $exception $stackTrace');
      }

      await sentryClient.captureEvent(
        event,
        stackTrace: report.stackTrace,
        hint: screenshotAttachment != null
            ? Hint.withScreenshot(screenshotAttachment)
            : null,
      );

      if (screenshotFile != null) {
        // Cleanup screenshot file after submission to save space on device.
        await screenshotFile.delete();
        _printLog('Screenshot file removed from device (cleanup)');
      }

      _printLog('Logged to sentry!');
      return true;
    } catch (exception, stackTrace) {
      _printLog('Failed to send sentry event: $exception $stackTrace');
      return false;
    }
  }

  String _getApplicationVersion(Report report) {
    var applicationVersion = '';
    final applicationParameters = report.applicationParameters;
    if (applicationParameters.containsKey('appName')) {
      applicationVersion += (applicationParameters['appName'] as String?)!;
    }
    if (applicationParameters.containsKey('version')) {
      applicationVersion += "@${applicationParameters["version"]}";
    }
    if (applicationVersion.isEmpty) {
      applicationVersion = '?';
    }
    return applicationVersion;
  }

  SentryEvent buildEvent(Report report, Map<String, dynamic> tags) =>
      SentryEvent(
        logger: loggerName,
        serverName: serverName,
        release: customRelease ?? _getApplicationVersion(report),
        environment: customEnvironment ??
            (report.applicationParameters['environment'] as String?),
        message: SentryMessage(report.error.toString()),
        throwable: report.error,
        level: SentryLevel.error,
        culprit: '',
        tags: changeToSentryMap(tags),
        user: userContext,
      );

  Map<String, String> changeToSentryMap(Map<String, dynamic> map) {
    final sentryMap = <String, String>{};
    map.forEach((key, value) {
      final val = value.toString();
      sentryMap[key] = val.isNotEmpty ? val : 'none';
    });
    return sentryMap;
  }

  void _printLog(String message) {
    if (printLogs) {
      logger.info(message);
    }
  }

  @override
  List<PlatformType> getSupportedPlatforms() => [
        PlatformType.android,
        PlatformType.iOS,
        PlatformType.web,
        PlatformType.linux,
        PlatformType.macOS,
        PlatformType.windows,
      ];
}
