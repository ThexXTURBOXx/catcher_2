import 'package:catcher_2/catcher_2.dart';
import 'package:material_ui/material_ui.dart';

/// Example demonstrating the pure core `catcher_2` package usage
/// with zero optional plugin dependencies (using only built-in ConsoleHandler and SnackbarHandler).
void main() {
  final debugOptions = Catcher2Options(DialogReportMode(), [
    ConsoleHandler(),
    SnackbarHandler(const Duration(seconds: 5)),
  ]);

  final releaseOptions = Catcher2Options(SilentReportMode(), [
    ConsoleHandler(),
  ]);

  Catcher2(
    runAppFunction: () {
      runApp(const CoreOnlyApp());
    },
    debugConfig: debugOptions,
    releaseConfig: releaseOptions,
  );
}

class CoreOnlyApp extends StatelessWidget {
  const CoreOnlyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    navigatorKey: Catcher2.navigatorKey,
    home: Scaffold(
      appBar: AppBar(title: const Text('Catcher 2 Core-Only Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Trigger a test exception to test core Catcher setup
            Catcher2.sendTestException();
          },
          child: const Text('Send Test Exception'),
        ),
      ),
    ),
  );
}
