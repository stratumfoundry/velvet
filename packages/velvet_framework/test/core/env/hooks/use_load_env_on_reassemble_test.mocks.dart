// Mocks generated by Mockito 5.4.4 from annotations
// in velvet_framework/test/core/env/hooks/use_load_env_on_reassemble_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i2;

import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i5;
import 'package:velvet_framework/src/core/config/contracts/velvet_config_manager_contract.dart'
    as _i3;
import 'package:velvet_framework/src/core/config/velvet_config.dart' as _i4;
import 'package:velvet_framework/src/core/env/contracts/env_config_contract.dart'
    as _i6;
import 'package:velvet_framework/src/core/event/contracts/velvet_event_bus_contract.dart'
    as _i7;
import 'package:velvet_framework/src/core/event/velvet_event.dart' as _i8;
import 'package:velvet_framework/src/core/logger/contracts/velvet_logger_contract.dart'
    as _i9;
import 'package:velvet_framework/src/core/logger/velvet_logger_channel.dart'
    as _i10;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeStreamSubscription_0<T1> extends _i1.SmartFake
    implements _i2.StreamSubscription<T1> {
  _FakeStreamSubscription_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [VelvetConfigManagerContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockVelvetConfigManagerContract extends _i1.Mock
    implements _i3.VelvetConfigManagerContract {
  @override
  T register<T extends _i4.VelvetConfig>(T? config) => (super.noSuchMethod(
        Invocation.method(
          #register,
          [config],
        ),
        returnValue: _i5.dummyValue<T>(
          this,
          Invocation.method(
            #register,
            [config],
          ),
        ),
        returnValueForMissingStub: _i5.dummyValue<T>(
          this,
          Invocation.method(
            #register,
            [config],
          ),
        ),
      ) as T);

  @override
  T get<T extends _i4.VelvetConfig>() => (super.noSuchMethod(
        Invocation.method(
          #get,
          [],
        ),
        returnValue: _i5.dummyValue<T>(
          this,
          Invocation.method(
            #get,
            [],
          ),
        ),
        returnValueForMissingStub: _i5.dummyValue<T>(
          this,
          Invocation.method(
            #get,
            [],
          ),
        ),
      ) as T);

  @override
  List<_i4.VelvetConfig> all() => (super.noSuchMethod(
        Invocation.method(
          #all,
          [],
        ),
        returnValue: <_i4.VelvetConfig>[],
        returnValueForMissingStub: <_i4.VelvetConfig>[],
      ) as List<_i4.VelvetConfig>);

  @override
  void refresh() => super.noSuchMethod(
        Invocation.method(
          #refresh,
          [],
        ),
        returnValueForMissingStub: null,
      );
}

/// A class which mocks [EnvConfigContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockEnvConfigContract extends _i1.Mock implements _i6.EnvConfigContract {
  @override
  bool get isEnabled => (super.noSuchMethod(
        Invocation.getter(#isEnabled),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);
}

/// A class which mocks [VelvetEventBusContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockVelvetEventBusContract extends _i1.Mock
    implements _i7.VelvetEventBusContract {
  @override
  void dispatch<T extends _i8.VelvetEvent>(T? event) => super.noSuchMethod(
        Invocation.method(
          #dispatch,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i2.StreamSubscription<T> on<T extends _i8.VelvetEvent>(
          void Function(T)? onEvent) =>
      (super.noSuchMethod(
        Invocation.method(
          #on,
          [onEvent],
        ),
        returnValue: _FakeStreamSubscription_0<T>(
          this,
          Invocation.method(
            #on,
            [onEvent],
          ),
        ),
        returnValueForMissingStub: _FakeStreamSubscription_0<T>(
          this,
          Invocation.method(
            #on,
            [onEvent],
          ),
        ),
      ) as _i2.StreamSubscription<T>);
}

/// A class which mocks [VelvetLoggerContract].
///
/// See the documentation for Mockito's code generation for more information.
class MockVelvetLoggerContract extends _i1.Mock
    implements _i9.VelvetLoggerContract {
  @override
  void info(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<_i10.VelvetLoggerChannel>? channels,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #info,
          [message],
          {
            #error: error,
            #stackTrace: stackTrace,
            #channels: channels,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void error(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<_i10.VelvetLoggerChannel>? channels,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #error,
          [message],
          {
            #error: error,
            #stackTrace: stackTrace,
            #channels: channels,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void warning(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<_i10.VelvetLoggerChannel>? channels,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #warning,
          [message],
          {
            #error: error,
            #stackTrace: stackTrace,
            #channels: channels,
          },
        ),
        returnValueForMissingStub: null,
      );

  @override
  void debug(
    dynamic message, {
    Object? error,
    StackTrace? stackTrace,
    List<_i10.VelvetLoggerChannel>? channels,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #debug,
          [message],
          {
            #error: error,
            #stackTrace: stackTrace,
            #channels: channels,
          },
        ),
        returnValueForMissingStub: null,
      );
}
