// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pubspec_resource.freezed.dart';
part 'pubspec_resource.g.dart';

@freezed
class PubspecResource with _$PubspecResource {
  const factory PubspecResource({
    required String name,
    Dependencies? dependencies,
    Dependencies? devDependencies,
    String? version,
    String? description,
    String? homepage,
    String? repository,
    String? issueTracker,
    String? documentation,
    @JsonKey(fromJson: PubspecResource.executablesFromJson)
    List<Executable>? executables,
    Platforms? platforms,
    String? publishTo,
    List<String>? funding,
    List<String>? falseSecrets,
    List<Screenshot>? screenshots,
    List<String>? topics,
    List<String>? ignoredAdvisories,
    Environment? environment,
    Dependencies? dependencyOverrides,
    Flutter? flutter,
  }) = _PubspecResource;

  factory PubspecResource.fromJson(Map<String, dynamic> json) =>
      _$PubspecResourceFromJson(json);

  static List<Executable> executablesFromJson(Map<String, dynamic> json) {
    var executables = <Executable>[];

    for (var executable in json.entries) {
      executables.add(Executable.fromJson({
        'name': executable.key,
      }));
    }

    return executables;
  }
}

@freezed
class Dependencies with _$Dependencies {
  const factory Dependencies({
    Map<String, Dependency>? dependencies,
  }) = _Dependencies;

  factory Dependencies.fromJson(Map<String, dynamic> json) =>
      _$DependenciesFromJson(json);
}

@freezed
class Dependency with _$Dependency {
  const factory Dependency({
    String? version,
    String? sdk,
    Hosted? hosted,
    Git? git,
    String? path,
  }) = _Dependency;

  factory Dependency.fromJson(Map<String, dynamic> json) =>
      _$DependencyFromJson(json);
}

@freezed
class Hosted with _$Hosted {
  const factory Hosted({
    String? name,
    required String url,
  }) = _Hosted;

  factory Hosted.fromJson(Map<String, dynamic> json) => _$HostedFromJson(json);
}

@freezed
class Git with _$Git {
  const factory Git({
    required String url,
    String? path,
    String? ref,
  }) = _Git;

  factory Git.fromJson(Map<String, dynamic> json) => _$GitFromJson(json);
}

@freezed
class Executable with _$Executable {
  const factory Executable({
    required String name,
  }) = _Executable;

  factory Executable.fromJson(Map<String, dynamic> json) =>
      _$ExecutableFromJson(json);
}

@freezed
class Platforms with _$Platforms {
  const factory Platforms({
    bool? android,
    bool? ios,
    bool? linux,
    bool? macos,
    bool? web,
    bool? windows,
  }) = _Platforms;

  factory Platforms.fromJson(Map<String, dynamic> json) =>
      _$PlatformsFromJson(json);
}

@freezed
class Screenshot with _$Screenshot {
  const factory Screenshot({
    required String description,
    required String path,
  }) = _Screenshot;

  factory Screenshot.fromJson(Map<String, dynamic> json) =>
      _$ScreenshotFromJson(json);
}

@freezed
class Environment with _$Environment {
  const factory Environment({
    Map<String, VersionConstraint>? environment,
  }) = _Environment;

  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);
}

@freezed
class VersionConstraint with _$VersionConstraint {
  const factory VersionConstraint({
    String? version,
    String? constraint,
  }) = _VersionConstraint;

  factory VersionConstraint.fromJson(Map<String, dynamic> json) =>
      _$VersionConstraintFromJson(json);
}

@freezed
class Flutter with _$Flutter {
  const factory Flutter({
    bool? usesMaterialDesign,
    bool? generate,
    @JsonKey(fromJson: Flutter.assetToJson) List<Asset>? assets,
    List<Font>? fonts,
    List<String>? shaders,
  }) = _Flutter;

  factory Flutter.fromJson(Map<String, dynamic> json) =>
      _$FlutterFromJson(json);

  static List<Asset> assetToJson(dynamic json) {
    var assets = <Asset>[];
    for (var asset in json) {
      if (asset is String) {
        assets.add(Asset(path: asset));
      } else if (asset is Map<String, dynamic>) {
        assets.add(Asset.fromJson(asset));
      }
    }

    return assets;
  }
}

@freezed
class Asset with _$Asset {
  const factory Asset({
    required String path,
    List<String>? flavors,
    List<Transformer>? transformers,
  }) = _Asset;

  factory Asset.fromJson(Map<String, dynamic> json) => _$AssetFromJson(json);
}

@freezed
class Transformer with _$Transformer {
  const factory Transformer({
    required String package,
    List<String>? args,
  }) = _Transformer;

  factory Transformer.fromJson(Map<String, dynamic> json) =>
      _$TransformerFromJson(json);
}

@freezed
class Font with _$Font {
  const factory Font({
    required String family,
    required List<FontDetail> fonts,
  }) = _Font;

  factory Font.fromJson(Map<String, dynamic> json) => _$FontFromJson(json);
}

@freezed
class FontDetail with _$FontDetail {
  const factory FontDetail({
    required String asset,
    String? style,
    int? weight,
  }) = _FontDetail;

  factory FontDetail.fromJson(Map<String, dynamic> json) =>
      _$FontDetailFromJson(json);
}
