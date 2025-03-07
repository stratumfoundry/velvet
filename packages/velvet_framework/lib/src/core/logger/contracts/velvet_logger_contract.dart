// ignore_for_file: avoid_dynamic, avoid-dynamic
import 'package:velvet_framework/src/core/logger/velvet_logger_channel.dart';

abstract class VelvetLoggerContract {
  void info(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  });

  void error(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  });

  void warning(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  });

  void debug(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<VelvetLoggerChannel>? channels,
  });
}
