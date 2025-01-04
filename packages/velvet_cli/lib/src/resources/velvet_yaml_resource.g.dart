// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'velvet_yaml_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VelvetYamlResourceImpl _$$VelvetYamlResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$VelvetYamlResourceImpl(
      type: $enumDecode(_$VelvetConfigTypeEnumMap, json['type']),
      name: json['name'] as String,
      providers: (json['providers'] as List<dynamic>)
          .map((e) => ProviderResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      configs: (json['configs'] as List<dynamic>)
          .map((e) => ConfigResource.fromJson(e as Map<String, dynamic>))
          .toList(),
      commands: (json['commands'] as List<dynamic>)
          .map((e) => CommandResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$VelvetYamlResourceImplToJson(
        _$VelvetYamlResourceImpl instance) =>
    <String, dynamic>{
      'type': _$VelvetConfigTypeEnumMap[instance.type]!,
      'name': instance.name,
      'providers': instance.providers,
      'configs': instance.configs,
      'commands': instance.commands,
    };

const _$VelvetConfigTypeEnumMap = {
  VelvetConfigType.plugin: 'plugin',
};

_$ProviderResourceImpl _$$ProviderResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ProviderResourceImpl(
      name: json['name'] as String,
      token: json['token'] as String,
      relativePath: json['relative_path'] as String,
    );

Map<String, dynamic> _$$ProviderResourceImplToJson(
        _$ProviderResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'token': instance.token,
      'relative_path': instance.relativePath,
    };

_$ConfigResourceImpl _$$ConfigResourceImplFromJson(Map<String, dynamic> json) =>
    _$ConfigResourceImpl(
      name: json['name'] as String,
      contract:
          ContractResource.fromJson(json['contract'] as Map<String, dynamic>),
      createAs:
          CreateAsResource.fromJson(json['create_as'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConfigResourceImplToJson(
        _$ConfigResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'contract': instance.contract,
      'create_as': instance.createAs,
    };

_$ContractResourceImpl _$$ContractResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ContractResourceImpl(
      token: json['token'] as String,
      relativePath: json['relative_path'] as String,
    );

Map<String, dynamic> _$$ContractResourceImplToJson(
        _$ContractResourceImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'relative_path': instance.relativePath,
    };

_$CreateAsResourceImpl _$$CreateAsResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateAsResourceImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$CreateAsResourceImplToJson(
        _$CreateAsResourceImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

_$CommandResourceImpl _$$CommandResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$CommandResourceImpl(
      relativePath: json['relative_path'] as String,
    );

Map<String, dynamic> _$$CommandResourceImplToJson(
        _$CommandResourceImpl instance) =>
    <String, dynamic>{
      'relative_path': instance.relativePath,
    };
