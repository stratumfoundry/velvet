import 'package:velvet_framework/src/store/velvet_storable.dart';

class LocaleStorable extends VelvetStorable<String> {
  LocaleStorable() : super(token: 'velvet.translation.locale');
}
