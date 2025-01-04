// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'velvet_yaml_resource.freezed.dart';
part 'velvet_yaml_resource.g.dart';

enum VelvetConfigType { plugin }

@freezed
class VelvetYamlResource with _$VelvetYamlResource {
  const factory VelvetYamlResource({
    @JsonKey(name: 'type') required VelvetConfigType type,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'providers') required List<ProviderResource> providers,
    @JsonKey(name: 'configs') required List<ConfigResource> configs,
    @JsonKey(name: 'commands') required List<CommandResource> commands,
  }) = _VelvetYamlResource;

  factory VelvetYamlResource.fromJson(Map<String, dynamic> json) =>
      _$VelvetYamlResourceFromJson(json);
}

@freezed
class ProviderResource with _$ProviderResource {
  const factory ProviderResource({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'relative_path') required String relativePath,
  }) = _ProviderResource;

  factory ProviderResource.fromJson(Map<String, dynamic> json) =>
      _$ProviderResourceFromJson(json);
}

@freezed
class ConfigResource with _$ConfigResource {
  const factory ConfigResource({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'contract') required ContractResource contract,
    @JsonKey(name: 'create_as') required CreateAsResource createAs,
  }) = _ConfigResource;

  factory ConfigResource.fromJson(Map<String, dynamic> json) =>
      _$ConfigResourceFromJson(json);
}

@freezed
class ContractResource with _$ContractResource {
  const factory ContractResource({
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'relative_path') required String relativePath,
  }) = _ContractResource;

  factory ContractResource.fromJson(Map<String, dynamic> json) =>
      _$ContractResourceFromJson(json);
}

@freezed
class CreateAsResource with _$CreateAsResource {
  const factory CreateAsResource({
    @JsonKey(name: 'token') required String token,
  }) = _CreateAsResource;

  factory CreateAsResource.fromJson(Map<String, dynamic> json) =>
      _$CreateAsResourceFromJson(json);
}

@freezed
class CommandResource with _$CommandResource {
  const factory CommandResource({
    @JsonKey(name: 'relative_path') required String relativePath,
  }) = _CommandResource;

  factory CommandResource.fromJson(Map<String, dynamic> json) =>
      _$CommandResourceFromJson(json);
}
