import 'package:flutter/foundation.dart';
import 'package:velvet_framework/src/core/event/observers/velvet_observer.dart';
import 'package:velvet_framework/src/core/event/subjects/velvet_subject.dart';

abstract class VelvetObserverFromEvents<T extends VelvetObserver>
    extends VelvetSubject<T> {
  VelvetObserverFromEvents() {
    bindEvents();
  }

  @protected
  void bindEvents();
}
