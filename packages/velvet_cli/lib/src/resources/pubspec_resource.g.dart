// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pubspec_resource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PubspecResourceImpl _$$PubspecResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$PubspecResourceImpl(
      name: json['name'] as String,
      dependencies: json['dependencies'] == null
          ? null
          : Dependencies.fromJson(json['dependencies'] as Map<String, dynamic>),
      devDependencies: json['devDependencies'] == null
          ? null
          : Dependencies.fromJson(
              json['devDependencies'] as Map<String, dynamic>),
      version: json['version'] as String?,
      description: json['description'] as String?,
      homepage: json['homepage'] as String?,
      repository: json['repository'] as String?,
      issueTracker: json['issueTracker'] as String?,
      documentation: json['documentation'] as String?,
      executables: PubspecResource.executablesFromJson(
          json['executables'] as Map<String, dynamic>),
      platforms: json['platforms'] == null
          ? null
          : Platforms.fromJson(json['platforms'] as Map<String, dynamic>),
      publishTo: json['publishTo'] as String?,
      funding:
          (json['funding'] as List<dynamic>?)?.map((e) => e as String).toList(),
      falseSecrets: (json['falseSecrets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      screenshots: (json['screenshots'] as List<dynamic>?)
          ?.map((e) => Screenshot.fromJson(e as Map<String, dynamic>))
          .toList(),
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      ignoredAdvisories: (json['ignoredAdvisories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      environment: json['environment'] == null
          ? null
          : Environment.fromJson(json['environment'] as Map<String, dynamic>),
      dependencyOverrides: json['dependencyOverrides'] == null
          ? null
          : Dependencies.fromJson(
              json['dependencyOverrides'] as Map<String, dynamic>),
      flutter: json['flutter'] == null
          ? null
          : Flutter.fromJson(json['flutter'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PubspecResourceImplToJson(
        _$PubspecResourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'dependencies': instance.dependencies,
      'devDependencies': instance.devDependencies,
      'version': instance.version,
      'description': instance.description,
      'homepage': instance.homepage,
      'repository': instance.repository,
      'issueTracker': instance.issueTracker,
      'documentation': instance.documentation,
      'executables': instance.executables,
      'platforms': instance.platforms,
      'publishTo': instance.publishTo,
      'funding': instance.funding,
      'falseSecrets': instance.falseSecrets,
      'screenshots': instance.screenshots,
      'topics': instance.topics,
      'ignoredAdvisories': instance.ignoredAdvisories,
      'environment': instance.environment,
      'dependencyOverrides': instance.dependencyOverrides,
      'flutter': instance.flutter,
    };

_$DependenciesImpl _$$DependenciesImplFromJson(Map<String, dynamic> json) =>
    _$DependenciesImpl(
      dependencies: (json['dependencies'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, Dependency.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$DependenciesImplToJson(_$DependenciesImpl instance) =>
    <String, dynamic>{
      'dependencies': instance.dependencies,
    };

_$DependencyImpl _$$DependencyImplFromJson(Map<String, dynamic> json) =>
    _$DependencyImpl(
      version: json['version'] as String?,
      sdk: json['sdk'] as String?,
      hosted: json['hosted'] == null
          ? null
          : Hosted.fromJson(json['hosted'] as Map<String, dynamic>),
      git: json['git'] == null
          ? null
          : Git.fromJson(json['git'] as Map<String, dynamic>),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$DependencyImplToJson(_$DependencyImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'sdk': instance.sdk,
      'hosted': instance.hosted,
      'git': instance.git,
      'path': instance.path,
    };

_$HostedImpl _$$HostedImplFromJson(Map<String, dynamic> json) => _$HostedImpl(
      name: json['name'] as String?,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$HostedImplToJson(_$HostedImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_$GitImpl _$$GitImplFromJson(Map<String, dynamic> json) => _$GitImpl(
      url: json['url'] as String,
      path: json['path'] as String?,
      ref: json['ref'] as String?,
    );

Map<String, dynamic> _$$GitImplToJson(_$GitImpl instance) => <String, dynamic>{
      'url': instance.url,
      'path': instance.path,
      'ref': instance.ref,
    };

_$ExecutableImpl _$$ExecutableImplFromJson(Map<String, dynamic> json) =>
    _$ExecutableImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$ExecutableImplToJson(_$ExecutableImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PlatformsImpl _$$PlatformsImplFromJson(Map<String, dynamic> json) =>
    _$PlatformsImpl(
      android: json['android'] as bool?,
      ios: json['ios'] as bool?,
      linux: json['linux'] as bool?,
      macos: json['macos'] as bool?,
      web: json['web'] as bool?,
      windows: json['windows'] as bool?,
    );

Map<String, dynamic> _$$PlatformsImplToJson(_$PlatformsImpl instance) =>
    <String, dynamic>{
      'android': instance.android,
      'ios': instance.ios,
      'linux': instance.linux,
      'macos': instance.macos,
      'web': instance.web,
      'windows': instance.windows,
    };

_$ScreenshotImpl _$$ScreenshotImplFromJson(Map<String, dynamic> json) =>
    _$ScreenshotImpl(
      description: json['description'] as String,
      path: json['path'] as String,
    );

Map<String, dynamic> _$$ScreenshotImplToJson(_$ScreenshotImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'path': instance.path,
    };

_$EnvironmentImpl _$$EnvironmentImplFromJson(Map<String, dynamic> json) =>
    _$EnvironmentImpl(
      environment: (json['environment'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, VersionConstraint.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$EnvironmentImplToJson(_$EnvironmentImpl instance) =>
    <String, dynamic>{
      'environment': instance.environment,
    };

_$VersionConstraintImpl _$$VersionConstraintImplFromJson(
        Map<String, dynamic> json) =>
    _$VersionConstraintImpl(
      version: json['version'] as String?,
      constraint: json['constraint'] as String?,
    );

Map<String, dynamic> _$$VersionConstraintImplToJson(
        _$VersionConstraintImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'constraint': instance.constraint,
    };

_$FlutterImpl _$$FlutterImplFromJson(Map<String, dynamic> json) =>
    _$FlutterImpl(
      usesMaterialDesign: json['usesMaterialDesign'] as bool?,
      generate: json['generate'] as bool?,
      assets: Flutter.assetToJson(json['assets']),
      fonts: (json['fonts'] as List<dynamic>?)
          ?.map((e) => Font.fromJson(e as Map<String, dynamic>))
          .toList(),
      shaders:
          (json['shaders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FlutterImplToJson(_$FlutterImpl instance) =>
    <String, dynamic>{
      'usesMaterialDesign': instance.usesMaterialDesign,
      'generate': instance.generate,
      'assets': instance.assets,
      'fonts': instance.fonts,
      'shaders': instance.shaders,
    };

_$AssetImpl _$$AssetImplFromJson(Map<String, dynamic> json) => _$AssetImpl(
      path: json['path'] as String,
      flavors:
          (json['flavors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      transformers: (json['transformers'] as List<dynamic>?)
          ?.map((e) => Transformer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AssetImplToJson(_$AssetImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'flavors': instance.flavors,
      'transformers': instance.transformers,
    };

_$TransformerImpl _$$TransformerImplFromJson(Map<String, dynamic> json) =>
    _$TransformerImpl(
      package: json['package'] as String,
      args: (json['args'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$TransformerImplToJson(_$TransformerImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'args': instance.args,
    };

_$FontImpl _$$FontImplFromJson(Map<String, dynamic> json) => _$FontImpl(
      family: json['family'] as String,
      fonts: (json['fonts'] as List<dynamic>)
          .map((e) => FontDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FontImplToJson(_$FontImpl instance) =>
    <String, dynamic>{
      'family': instance.family,
      'fonts': instance.fonts,
    };

_$FontDetailImpl _$$FontDetailImplFromJson(Map<String, dynamic> json) =>
    _$FontDetailImpl(
      asset: json['asset'] as String,
      style: json['style'] as String?,
      weight: (json['weight'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FontDetailImplToJson(_$FontDetailImpl instance) =>
    <String, dynamic>{
      'asset': instance.asset,
      'style': instance.style,
      'weight': instance.weight,
    };
