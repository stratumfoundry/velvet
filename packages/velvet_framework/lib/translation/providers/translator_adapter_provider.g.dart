// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translator_adapter_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$translatorAdapterHash() => r'cf80dc54260f7912e2b680c0162e6807a851e087';

/// See also [translatorAdapter].
@ProviderFor(translatorAdapter)
final translatorAdapterProvider = Provider<TranslatorAdapterContract>.internal(
  translatorAdapter,
  name: r'translatorAdapterProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$translatorAdapterHash,
  dependencies: <ProviderOrFamily>[translationConfigProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    translationConfigProvider,
    ...?translationConfigProvider.allTransitiveDependencies
  },
);

typedef TranslatorAdapterRef = ProviderRef<TranslatorAdapterContract>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
