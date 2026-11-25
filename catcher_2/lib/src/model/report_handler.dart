import 'package:catcher_2/src/model/platform_type.dart';
import 'package:catcher_2/src/model/report.dart';
import 'package:catcher_2/src/utils/catcher_2_logger.dart';
import 'package:material_ui/material_ui.dart';

abstract class ReportHandler {
  /// Logger instance
  late Catcher2Logger logger;

  /// Method called when report has been accepted by user
  Future<bool> handle(Report report, BuildContext? context);

  /// Get list of supported platforms
  List<PlatformType> getSupportedPlatforms();

  /// Check if given report mode requires context to run
  bool isContextRequired() => false;

  /// Check whether report mode should auto confirm without user confirmation.
  bool shouldHandleWhenRejected() => false;

  /// Can be overridden to provide more information about this handler.
  @override
  String toString() => runtimeType.toString();
}
