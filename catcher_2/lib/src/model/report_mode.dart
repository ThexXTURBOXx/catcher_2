import 'package:catcher_2/src/mode/report_mode_action_confirmed.dart';
import 'package:catcher_2/src/model/catcher_2_i18n.dart';
import 'package:catcher_2/src/model/platform_type.dart';
import 'package:catcher_2/src/model/report.dart';
import 'package:flutter/widgets.dart';

abstract class ReportMode {
  late ReportModeAction _reportModeAction;

  /// Set report mode action.
  // ignore: avoid_setters_without_getters
  set reportModeAction(ReportModeAction reportModeAction) {
    _reportModeAction = reportModeAction;
  }

  /// Code which should be triggered if new error has been caught and core
  /// creates report about this.
  void requestAction(Report report, BuildContext? context);

  /// On user has accepted report
  void onActionConfirmed(Report report) {
    _reportModeAction.onActionConfirmed(report);
  }

  /// On user has rejected report
  void onActionRejected(Report report) {
    _reportModeAction.onActionRejected(report);
  }

  /// Check if given report mode requires context to run
  bool isContextRequired() => false;

  /// Get currently used localization options
  Catcher2Localizations getLocalizations(BuildContext context) =>
      context.catcher2localizations;

  /// Get supported platform list
  List<PlatformType> getSupportedPlatforms();
}
