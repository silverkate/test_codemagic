import 'dart:async';

import 'package:test_codemagic/models/index.dart';

abstract class Logger {
  Future<void> init() async {}

  void registerUserProfile(UserProfile userProfile) {}

  void log(String message, {String? category});

  void logInfo(String message);

  void logWarning(String message);

  void logError(Object exception, [dynamic stackTrace]);
}
