// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_config_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageConfigResourceImpl _$$PackageConfigResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageConfigResourceImpl(
      packages: (json['packages'] as List<dynamic>)
          .map((e) =>
              PackageConfigPackageResource.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PackageConfigResourceImplToJson(
        _$PackageConfigResourceImpl instance) =>
    <String, dynamic>{
      'packages': instance.packages,
    };

_$PackageConfigPackageResourceImpl _$$PackageConfigPackageResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageConfigPackageResourceImpl(
      name: json['name'] as String,
      rootUri: json['rootUri'] as String,
      packageUri: json['packageUri'] as String,
      languageVersion: json['languageVersion'] as String,
    );

Map<String, dynamic> _$$PackageConfigPackageResourceImplToJson(
        _$PackageConfigPackageResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rootUri': instance.rootUri,
      'packageUri': instance.packageUri,
      'languageVersion': instance.languageVersion,
    };
