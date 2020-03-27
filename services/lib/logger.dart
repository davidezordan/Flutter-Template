import 'package:flutter/foundation.dart';

///A system wide logger that can be accessed from anywhere.
///
/// todo.
abstract class Logger{
  static void logDebug(String message){
    log(message);
  }

  static void logInformative(String message){
    log(message, logLevel: LogLevel.INFO);
  }

  static void logWarning(String message){
    log(message, logLevel: LogLevel.WARNING);
  }

  static void logCritical(String message){
    log(message, logLevel: LogLevel.CRITICAL);
  }

  ///Writes a log message to the console and to a log file.
  static void log(String message, {LogLevel logLevel = LogLevel.DEBUG, bool writeToFile = true}){
    var dt = new DateTime.now();
    var fullMessage = '[$logLevel] [$dt] - $message';
    if(logLevel == LogLevel.DEBUG && kReleaseMode){
      return;
    }
    print(fullMessage);
  }
}

enum LogLevel {
  DEBUG,
  INFO,
  WARNING,
  CRITICAL
}