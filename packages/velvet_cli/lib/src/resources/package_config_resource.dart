import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_config_resource.freezed.dart';
part 'package_config_resource.g.dart';

@freezed
class PackageConfigResource with _$PackageConfigResource {
  const factory PackageConfigResource({
    required List<PackageConfigPackageResource> packages,
  }) = _PackageConfigResource;

  factory PackageConfigResource.fromJson(Map<String, dynamic> json) =>
      _$PackageConfigResourceFromJson(json);
}

@freezed
class PackageConfigPackageResource with _$PackageConfigPackageResource {
  const factory PackageConfigPackageResource({
    required String name,
    required String rootUri,
    required String packageUri,
    required String languageVersion,
  }) = _PackageConfigPackageResource;

  factory PackageConfigPackageResource.fromJson(Map<String, dynamic> json) =>
      _$PackageConfigPackageResourceFromJson(json);
}
