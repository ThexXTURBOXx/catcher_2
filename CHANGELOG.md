## 2.1.3
* Allow better integration of `go_router`/`MaterialApp.router(...)` (Thanks to [@IVLIVS-III](https://github.com/IVLIVS-III) in [#48](https://github.com/ThexXTURBOXx/catcher_2/pull/48))

## 2.1.2
* Allow `sentry` versions `9.x`

## 2.1.1
* Update `flutter_mailer` to `3.x`

## 2.1.0
* Add `extraData` parameter to `reportCheckedError` ([#40](https://github.com/ThexXTURBOXx/catcher_2/issues/40))

## 2.0.2
* Fix logger after `updateConfig` ([#39](https://github.com/ThexXTURBOXx/catcher_2/issues/39))

## 2.0.1
* Allow `device_info_plus` versions `11.x`
* Fix example on Android (build with JDK 21 failed)

## 2.0.0
* Bump to next stable version
* Improve logging ([#37](https://github.com/ThexXTURBOXx/catcher_2/issues/37))

## 2.0.0-alpha.2
* Fix analyser issues for Flutter `3.24.0`
* Update `fluttertoast` requirement to `8.2.6`

## 2.0.0-alpha.1
* Apply proper colours from App theme ([#31](https://github.com/ThexXTURBOXx/catcher_2/issues/31))

## 2.0.0-alpha.0
* [BREAKING_CHANGE] Migrate Slack screenshot API calls to `files.*UploadExternal` (you now need to specify also a `channelId` in the `SlackHandler` for that!)
* [BREAKING_CHANGE] Migrate screenshots to `cross_file`'s `XFile`s
* [BREAKING_CHANGE] Migrate away from Android `namespace` workaround (removes support for ancient AGP versions)
* [BREAKING_CHANGE] Fix error catching on Web (was also improved thanks to [@mikeesouth](https://github.com/mikeesouth) in [#32](https://github.com/ThexXTURBOXx/catcher_2/pull/32))
* Added more parameters to `SentryHandler` (Thanks to [@mikeesouth](https://github.com/mikeesouth) in [#32](https://github.com/ThexXTURBOXx/catcher_2/pull/32))
* Better example structure
* Update `flutter_lints` to `4.x`
* Rebase on upstream

## 1.2.6
* Allow `package_info_plus` versions `8.x`
* Remove direct dependency on `device_info_plus_platform_interface` (why was this there anyway?)

## 1.2.5
* Allow `package_info_plus` versions `7.x`

## 1.2.4
* Allow `package_info_plus` versions `6.x` (Thanks to [@bartektartanus](https://github.com/bartektartanus) in [#28](https://github.com/ThexXTURBOXx/catcher_2/pull/28))
* Allow `device_info_plus` versions `10.x`

## 1.2.3
* Fix `FileHandler` and optimize it

## 1.2.2
* Fix a few typos in the README (Thanks to [@mrclauss](https://github.com/mrclauss) in [#23](https://github.com/ThexXTURBOXx/catcher_2/pull/23))
* Fix lint for Flutter `3.19.x`

## 1.2.1
* Add `fileSupplier` to `FileHandler` ([#21](https://github.com/ThexXTURBOXx/catcher_2/issues/21) and [#22](https://github.com/ThexXTURBOXx/catcher_2/issues/22))
* Allow `sentry` versions `8.x`

## 1.2.0
* Add screenshot support for Sentry (Thanks to [@mikeesouth](https://github.com/mikeesouth) in [#20](https://github.com/ThexXTURBOXx/catcher_2/pull/20))

## 1.1.0
* Add screenshot support for Slack (Thanks to [@ramaarf](https://github.com/ramaarf) in [#18](https://github.com/ThexXTURBOXx/catcher_2/pull/18))
* Add Turkish translation (Thanks to [@anilaydinn](https://github.com/anilaydinn) in [#266](https://github.com/jhomlala/catcher/pull/266))

## 1.0.7
* Fix stack trace in console handler (Thanks to [@MilovdZee](https://github.com/MilovdZee) in [#16](https://github.com/ThexXTURBOXx/catcher_2/pull/16))

## 1.0.6
* Add Arabic translation ([#265](https://github.com/jhomlala/catcher/pull/265))
* Improve Russian translation ([#256](https://github.com/jhomlala/catcher/pull/256))
* Merge upstream `catcher` changes (only smaller things)

## 1.0.5
* Allow `package_info_plus` versions `5.x`
* Update to Flutter `3.16`

## 1.0.4
* Cleanup in many places (also makes a few things more robust)
* Fix `null` path for screenshot manager ([#12](https://github.com/ThexXTURBOXx/catcher_2/issues/12))

## 1.0.3
* Add even more error resilience to calls to 3rd party libraries

## 1.0.2
* Add error resilience to calls to 3rd party libraries
* Improve documentation

## 1.0.1
* Fix initialisation order ([#10](https://github.com/ThexXTURBOXx/catcher_2/issues/10))
* Allow additional, custom error handlers ([#11](https://github.com/ThexXTURBOXx/catcher_2/issues/11))
* Update `flutter_lints` and clean up implementation

## 1.0.0
* Stable version arrived, yay!
* Add `senderUsername` to set an explicit username for SMTP authentication

## 1.0.0-alpha.1
* Added migration guide

## 1.0.0-alpha.0
* [BREAKING_CHANGE] Rebrand to `catcher_2`
* [BREAKING_CHANGE] Fix compatibility with newer versions of Flutter. Only SDK `>=3.0.0` is supported now
* [BREAKING_CHANGE] Update to `dio` 5.x. This has an effect on the `HttpHandler`
* [BREAKING_CHANGE] Update to `sentry` 7.x
* Fix compatibility with AGP 8.x
* Fix wrong stack trace being sent to Sentry
* Fix a few typos in the README
* Fix many other errors as well
* Update package dependencies
* Update example dependencies

## 0.7.0
* [BREAKING_CHANGE] Update to Flutter 3 by Nico Mexis (https://github.com/ThexXTURBOXx).
* [BREAKING_CHANGE] Update device_info_plus and added android_id plugin by Nico Mexis (https://github.com/ThexXTURBOXx).

## 0.6.9
* [BREAKING_CHANGE] Changed customMessageBuilder return type to FutureOr<String> in slack and discord handler.
* Fixed screenshots example documents path.
* Fixed logger issue.
* Fixed lint.
* Dependencies and Android 12 update by Nico Mexis (https://github.com/ThexXTURBOXx).
* Removed deprecated splash screen from Android example.

## 0.6.8
* Updated crashlytics example by Fred Grott (https://github.com/fredgrott)
* Added custom message builder for slack handler by Salih Agić (https://github.com/salihagic)
* Added custom message builder for discord handler
* Updated dependencies

## 0.6.7
* Fixed typos by Morgan (https://github.com/rmtmckenzie) and Nico Mexis (https://github.com/ThexXTURBOXx)
* Updated dependencies by Nico Mexis (https://github.com/ThexXTURBOXx)
* Added `reportOccurrenceTimeout` in CatcherOptions to prevent reporting duplicated errors.
* Added new handler: SnackbarHandler which can be used to show snackbar message.
* Reworked logger in Catcher. Now Catcher uses only one class to handle log printing. Default logger can be overridden with custom logger.
* Added `logger` parameter in CatcherOptions to provide custom logger to Catcher.
* General logging/reporting fixes by naurmi (https://github.com/narumishi)
* Added missing CMakeLists.txt for Linux.

## 0.6.6
* Added copyWith method in LocalizationOptions.
* Updated chinese translations in LocalizationOptions.
* Updated example app codebase.
* Added filterFunction to CatcherOptions.
* Fixed displaying toast in desktops. Added missing support for desktops in toast handler.
* Fixed dialog and page report modes not triggering rejection of report when clicking on back button.
* Added shouldHandleWhenRejected() method in report handler. Should handle rejected
* Added handleWhenRejected parameter to ConsoleHandler, ToastHandler, FileHandler.
* Updated dependencies.

## 0.6.5
* Changed package_info to package_info_plus to support all platforms.

## 0.6.4
* Added excludedParameters in CatcherOptions.
* Updated dependencies
* [BREAKING_CHANGE] Added isContextRequired parameter for ReportHandler.
* [BREAKING_CHANGE] ReportHandler handle method requires additional BuildContext parameter.
* [BREAKING_CHANGE] Toast handler supports now all platforms.
* Added first error line for page report mode.

## 0.6.3
* Updated sentry version.
* Fixed sentry compilation issues by cjacobs42 (https://github.com/cjacobs42)
* Added additional error handling for device info parameters.

## 0.6.2
* Fixed Platform.* code which couldn't be used in web.
* Fixed issues where web couldn't use some of report mode or report handler.
* Added getInstance method to Catcher.
* Refactored email handlers. 
* Added html escape in email handlers.
* Fixed windows building.
* Added german translations by Nico Mexis (https://github.com/ThexXTURBOXx)
* Added screenshot feature. Screenshot will work for all platforms except Web. Screenshot is compatible
with Http Handler, Email Auto Handler, Email Manual Handler, Discord Handler.
* Added new field in CatcherOptions: screenshotsPath.
* Added CatcherScreenshot widget.
* Added screenshot example.

## 0.6.1
* Refactored platforms to fix pub dev platforms score.

## 0.6.0
* Added device_info_plus library instead of device_info.
* Added desktop support.

## 0.5.0
* [BREAKING_CHANGE] Added null safety.
* Removed deprecated android code.

## 0.4.2
* Fixed BinaryRegistrar issue.

## 0.4.1
* Added localization text in toast handler.
* Fixed page report mode UI issues by Don Coleman (https://github.com/drcdev).
* Added handleSilentError parameter in CatcherOptions.
* [BREAKING_CHANGE] PlatformType values has been changed to lower camel case.
* Lint fixes.

## 0.4.0
* [BREAKING_CHANGE]: rootWidget parameter has been moved to optional parameter
* Catcher requires now rootWidget or runAppFunction in setup
* Introduced CI and Lint check
* Updated sentry version by Nico Mexis (https://github.com/ThexXTURBOXx)

## 0.3.23
* Updated device_info version

## 0.3.22
* Added enableCustomParameters, enableStackTrace, enableApplicationParameters, enableDeviceParameters to HttpHandler

## 0.3.21
* Added Dutch language by EpicOkapi (https://github.com/EpicOkapi)
* Modified SentryHandler's userContext parameter by Mari Thorsteinsen (https://github.com/marantho)
* Updated dependencies

## 0.3.20
* Added customEnvironment and customRelease settings for Sentry Handler
* Updated documentation
* Fixed dependencies declaration

## 0.3.19
* Added detailed logs for sentry handler

## 0.3.18
* Added ensureInitialized flag in Catcher constructor
* Added updateConfig method to update configuration in runtime

## 0.3.17
* Updated documentation

## 0.3.16
* [BREAKING_CHANGE] Reverted crashlytics handler from core package
* Updated dependencies

## 0.3.15
* Added user context in sentry handler by Roman Muratov (https://github.com/kasl)
* Added crashlytics handler

## 0.3.14
* General refactor
* [BREAKING_CHANGE] You should use import "import 'package:catcher/catcher.dart';" instead import 'package:catcher/catcher_plugin.dart';

## 0.3.13
* Fixed pub dev score error

## 0.3.12
* Fixed pub dev score error
* Fixed min dart version

## 0.3.11
* Fixed pub dev score error

## 0.3.10
* Fixed pub dev score error

## 0.3.9
* Fixed pub dev score error

## 0.3.8
* Updated file handler example
* Allowed to update headers of http handler in runtime
* Updated flutter_html dependency

## 0.3.7
* Added Web support
* [BREAKING CHANGE] Added new abstract method (getSupportPlatform) for ReportHandler and ReportMode
* General refactor

## 0.3.6
* Removed Android lifecycle plugin
* Fixed Android class (support for v2 FlutterPlugin)

## 0.3.5
* Use Android Lifecycle flutter_plugin_android_lifecycle by Dlani (https://github.com/dlanileonardo)
* Pass ErrorDetails for Report, to use in CustomErrorHandler by Dlani (https://github.com/dlanileonardo)
* Added support for cupertino apps

## 0.3.4
* Fixed typos by Rob Halff (https://github.com/rhalff)
* [BREAKING CHANGE] Changed customTitle to title and customDescription to description in error widget.
* Added support for using error widget in small widgets.
* Refactored classes and added proper input handling.
* Fixed HttpHandler headers.
* Fixed AndroidX support.

## 0.3.3
* Updated dependencies
* Prepare for 1.0.0 version of sensors and package_info. ([dart_lsc](https://github.com/amirh/dart_lsc))

## 0.3.2
* Removed invalid import from error widget

## 0.3.1
* Fixed sentry handler reporting by David Martos (https://github.com/davidmartos96)
* Fixed stack trace displaying in error widget by Andrious Solutions (https://github.com/Andrious)

## 0.3.0
* Fixed AndroidX issues
* Changed sentry handler to accept sentry client instead of dsn

## 0.2.9
* Fixed localization options not initializing correctly

## 0.2.8
* [BREAKING CHANGE] Removed local notifications report mode due to incompatible with firebase_messaging. Check local_notifications_example to re-add local notifications to your app.
* More sentry handler customization
* Added support for custom navigator key provided from outside of Catcher
* Updated gradle version and min sdk version (android)
* Updated dependencies versions

## 0.2.7
* Fix for theme problem in error widget

## 0.2.6
* Added context required flag to report mode. Reason for that is to build custom report modes with context

## 0.2.5
* Fixed Dio version
* Updated portuguese translation by Estevão Costa (https://github.com/estevao90)

## 0.2.4
* Fixed Dio API breaking change

## 0.2.3
* Added Korean translations by Jace Shim (https://github.com/jaceshim)

## 0.2.2
* Added Slack handler
* Added Discord handler

## 0.2.1
* Added getCurrentConfig() method in Catcher class.
* Updated dependencies

## 0.2.0
* Updated Dio and Mailer version
* Refactored auto email handler

## 0.1.9
* Fixed custom parameters in email manual handler and email auto handler
* Added sentry handler

## 0.1.8
* Added explicit report mode map feature

## 0.1.7
* Added error widget feature

## 0.1.6
* Updated dependencies

## 0.1.5
* Fixed debugLock error
* Added flag to switch Catcher logger on/off

## 0.1.4
* Added explicit exception report handler map feature

## 0.1.3
* Added italian translations

## 0.1.2
* Updated chinese translations (Catcher is now using simplified chinese)

## 0.1.1
* Added test exception

## 0.1.0
* Finished basic API
* Added localization feature

## 0.0.12
* Fixed notification report mode bug

## 0.0.11
* [BREAKING CHANGE] Updated dependency libs to support AndroidX

## 0.0.10
* Fixed texts in report modes
* Fixed cached error report feature

## 0.0.9
* Updated Dio to version 2.0.0

## 0.0.8
* Added email manual handler
* Changed email handler to email auto handler
* Added application profile feature
* Added page report mode feature
* Added dialog report mode feature
* Changed configuration step, it uses now CatcherOptions to setup config for specific profile


## 0.0.7
* Fixed import error

## 0.0.6
* Fixed EmailHandler error

## 0.0.5
* Code refactor

## 0.0.4

* Created initial release
