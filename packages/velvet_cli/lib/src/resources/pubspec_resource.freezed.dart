// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubspec_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PubspecResource _$PubspecResourceFromJson(Map<String, dynamic> json) {
  return _PubspecResource.fromJson(json);
}

/// @nodoc
mixin _$PubspecResource {
  String get name => throw _privateConstructorUsedError;
  Dependencies? get dependencies => throw _privateConstructorUsedError;
  Dependencies? get devDependencies => throw _privateConstructorUsedError;
  String? get version => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get homepage => throw _privateConstructorUsedError;
  String? get repository => throw _privateConstructorUsedError;
  String? get issueTracker => throw _privateConstructorUsedError;
  String? get documentation => throw _privateConstructorUsedError;
  @JsonKey(fromJson: PubspecResource.executablesFromJson)
  List<Executable>? get executables => throw _privateConstructorUsedError;
  Platforms? get platforms => throw _privateConstructorUsedError;
  String? get publishTo => throw _privateConstructorUsedError;
  List<String>? get funding => throw _privateConstructorUsedError;
  List<String>? get falseSecrets => throw _privateConstructorUsedError;
  List<Screenshot>? get screenshots => throw _privateConstructorUsedError;
  List<String>? get topics => throw _privateConstructorUsedError;
  List<String>? get ignoredAdvisories => throw _privateConstructorUsedError;
  Environment? get environment => throw _privateConstructorUsedError;
  Dependencies? get dependencyOverrides => throw _privateConstructorUsedError;
  Flutter? get flutter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PubspecResourceCopyWith<PubspecResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecResourceCopyWith<$Res> {
  factory $PubspecResourceCopyWith(
          PubspecResource value, $Res Function(PubspecResource) then) =
      _$PubspecResourceCopyWithImpl<$Res, PubspecResource>;
  @useResult
  $Res call(
      {String name,
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
      Flutter? flutter});

  $DependenciesCopyWith<$Res>? get dependencies;
  $DependenciesCopyWith<$Res>? get devDependencies;
  $PlatformsCopyWith<$Res>? get platforms;
  $EnvironmentCopyWith<$Res>? get environment;
  $DependenciesCopyWith<$Res>? get dependencyOverrides;
  $FlutterCopyWith<$Res>? get flutter;
}

/// @nodoc
class _$PubspecResourceCopyWithImpl<$Res, $Val extends PubspecResource>
    implements $PubspecResourceCopyWith<$Res> {
  _$PubspecResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dependencies = freezed,
    Object? devDependencies = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? homepage = freezed,
    Object? repository = freezed,
    Object? issueTracker = freezed,
    Object? documentation = freezed,
    Object? executables = freezed,
    Object? platforms = freezed,
    Object? publishTo = freezed,
    Object? funding = freezed,
    Object? falseSecrets = freezed,
    Object? screenshots = freezed,
    Object? topics = freezed,
    Object? ignoredAdvisories = freezed,
    Object? environment = freezed,
    Object? dependencyOverrides = freezed,
    Object? flutter = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: freezed == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Dependencies?,
      devDependencies: freezed == devDependencies
          ? _value.devDependencies
          : devDependencies // ignore: cast_nullable_to_non_nullable
              as Dependencies?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
      issueTracker: freezed == issueTracker
          ? _value.issueTracker
          : issueTracker // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      executables: freezed == executables
          ? _value.executables
          : executables // ignore: cast_nullable_to_non_nullable
              as List<Executable>?,
      platforms: freezed == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Platforms?,
      publishTo: freezed == publishTo
          ? _value.publishTo
          : publishTo // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value.funding
          : funding // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      falseSecrets: freezed == falseSecrets
          ? _value.falseSecrets
          : falseSecrets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      screenshots: freezed == screenshots
          ? _value.screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Screenshot>?,
      topics: freezed == topics
          ? _value.topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ignoredAdvisories: freezed == ignoredAdvisories
          ? _value.ignoredAdvisories
          : ignoredAdvisories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      dependencyOverrides: freezed == dependencyOverrides
          ? _value.dependencyOverrides
          : dependencyOverrides // ignore: cast_nullable_to_non_nullable
              as Dependencies?,
      flutter: freezed == flutter
          ? _value.flutter
          : flutter // ignore: cast_nullable_to_non_nullable
              as Flutter?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenciesCopyWith<$Res>? get dependencies {
    if (_value.dependencies == null) {
      return null;
    }

    return $DependenciesCopyWith<$Res>(_value.dependencies!, (value) {
      return _then(_value.copyWith(dependencies: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenciesCopyWith<$Res>? get devDependencies {
    if (_value.devDependencies == null) {
      return null;
    }

    return $DependenciesCopyWith<$Res>(_value.devDependencies!, (value) {
      return _then(_value.copyWith(devDependencies: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PlatformsCopyWith<$Res>? get platforms {
    if (_value.platforms == null) {
      return null;
    }

    return $PlatformsCopyWith<$Res>(_value.platforms!, (value) {
      return _then(_value.copyWith(platforms: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EnvironmentCopyWith<$Res>? get environment {
    if (_value.environment == null) {
      return null;
    }

    return $EnvironmentCopyWith<$Res>(_value.environment!, (value) {
      return _then(_value.copyWith(environment: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DependenciesCopyWith<$Res>? get dependencyOverrides {
    if (_value.dependencyOverrides == null) {
      return null;
    }

    return $DependenciesCopyWith<$Res>(_value.dependencyOverrides!, (value) {
      return _then(_value.copyWith(dependencyOverrides: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FlutterCopyWith<$Res>? get flutter {
    if (_value.flutter == null) {
      return null;
    }

    return $FlutterCopyWith<$Res>(_value.flutter!, (value) {
      return _then(_value.copyWith(flutter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PubspecResourceImplCopyWith<$Res>
    implements $PubspecResourceCopyWith<$Res> {
  factory _$$PubspecResourceImplCopyWith(_$PubspecResourceImpl value,
          $Res Function(_$PubspecResourceImpl) then) =
      __$$PubspecResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
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
      Flutter? flutter});

  @override
  $DependenciesCopyWith<$Res>? get dependencies;
  @override
  $DependenciesCopyWith<$Res>? get devDependencies;
  @override
  $PlatformsCopyWith<$Res>? get platforms;
  @override
  $EnvironmentCopyWith<$Res>? get environment;
  @override
  $DependenciesCopyWith<$Res>? get dependencyOverrides;
  @override
  $FlutterCopyWith<$Res>? get flutter;
}

/// @nodoc
class __$$PubspecResourceImplCopyWithImpl<$Res>
    extends _$PubspecResourceCopyWithImpl<$Res, _$PubspecResourceImpl>
    implements _$$PubspecResourceImplCopyWith<$Res> {
  __$$PubspecResourceImplCopyWithImpl(
      _$PubspecResourceImpl _value, $Res Function(_$PubspecResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? dependencies = freezed,
    Object? devDependencies = freezed,
    Object? version = freezed,
    Object? description = freezed,
    Object? homepage = freezed,
    Object? repository = freezed,
    Object? issueTracker = freezed,
    Object? documentation = freezed,
    Object? executables = freezed,
    Object? platforms = freezed,
    Object? publishTo = freezed,
    Object? funding = freezed,
    Object? falseSecrets = freezed,
    Object? screenshots = freezed,
    Object? topics = freezed,
    Object? ignoredAdvisories = freezed,
    Object? environment = freezed,
    Object? dependencyOverrides = freezed,
    Object? flutter = freezed,
  }) {
    return _then(_$PubspecResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: freezed == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Dependencies?,
      devDependencies: freezed == devDependencies
          ? _value.devDependencies
          : devDependencies // ignore: cast_nullable_to_non_nullable
              as Dependencies?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      homepage: freezed == homepage
          ? _value.homepage
          : homepage // ignore: cast_nullable_to_non_nullable
              as String?,
      repository: freezed == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as String?,
      issueTracker: freezed == issueTracker
          ? _value.issueTracker
          : issueTracker // ignore: cast_nullable_to_non_nullable
              as String?,
      documentation: freezed == documentation
          ? _value.documentation
          : documentation // ignore: cast_nullable_to_non_nullable
              as String?,
      executables: freezed == executables
          ? _value._executables
          : executables // ignore: cast_nullable_to_non_nullable
              as List<Executable>?,
      platforms: freezed == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as Platforms?,
      publishTo: freezed == publishTo
          ? _value.publishTo
          : publishTo // ignore: cast_nullable_to_non_nullable
              as String?,
      funding: freezed == funding
          ? _value._funding
          : funding // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      falseSecrets: freezed == falseSecrets
          ? _value._falseSecrets
          : falseSecrets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      screenshots: freezed == screenshots
          ? _value._screenshots
          : screenshots // ignore: cast_nullable_to_non_nullable
              as List<Screenshot>?,
      topics: freezed == topics
          ? _value._topics
          : topics // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ignoredAdvisories: freezed == ignoredAdvisories
          ? _value._ignoredAdvisories
          : ignoredAdvisories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Environment?,
      dependencyOverrides: freezed == dependencyOverrides
          ? _value.dependencyOverrides
          : dependencyOverrides // ignore: cast_nullable_to_non_nullable
              as Dependencies?,
      flutter: freezed == flutter
          ? _value.flutter
          : flutter // ignore: cast_nullable_to_non_nullable
              as Flutter?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PubspecResourceImpl implements _PubspecResource {
  const _$PubspecResourceImpl(
      {required this.name,
      this.dependencies,
      this.devDependencies,
      this.version,
      this.description,
      this.homepage,
      this.repository,
      this.issueTracker,
      this.documentation,
      @JsonKey(fromJson: PubspecResource.executablesFromJson)
      final List<Executable>? executables,
      this.platforms,
      this.publishTo,
      final List<String>? funding,
      final List<String>? falseSecrets,
      final List<Screenshot>? screenshots,
      final List<String>? topics,
      final List<String>? ignoredAdvisories,
      this.environment,
      this.dependencyOverrides,
      this.flutter})
      : _executables = executables,
        _funding = funding,
        _falseSecrets = falseSecrets,
        _screenshots = screenshots,
        _topics = topics,
        _ignoredAdvisories = ignoredAdvisories;

  factory _$PubspecResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PubspecResourceImplFromJson(json);

  @override
  final String name;
  @override
  final Dependencies? dependencies;
  @override
  final Dependencies? devDependencies;
  @override
  final String? version;
  @override
  final String? description;
  @override
  final String? homepage;
  @override
  final String? repository;
  @override
  final String? issueTracker;
  @override
  final String? documentation;
  final List<Executable>? _executables;
  @override
  @JsonKey(fromJson: PubspecResource.executablesFromJson)
  List<Executable>? get executables {
    final value = _executables;
    if (value == null) return null;
    if (_executables is EqualUnmodifiableListView) return _executables;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Platforms? platforms;
  @override
  final String? publishTo;
  final List<String>? _funding;
  @override
  List<String>? get funding {
    final value = _funding;
    if (value == null) return null;
    if (_funding is EqualUnmodifiableListView) return _funding;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _falseSecrets;
  @override
  List<String>? get falseSecrets {
    final value = _falseSecrets;
    if (value == null) return null;
    if (_falseSecrets is EqualUnmodifiableListView) return _falseSecrets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Screenshot>? _screenshots;
  @override
  List<Screenshot>? get screenshots {
    final value = _screenshots;
    if (value == null) return null;
    if (_screenshots is EqualUnmodifiableListView) return _screenshots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _topics;
  @override
  List<String>? get topics {
    final value = _topics;
    if (value == null) return null;
    if (_topics is EqualUnmodifiableListView) return _topics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _ignoredAdvisories;
  @override
  List<String>? get ignoredAdvisories {
    final value = _ignoredAdvisories;
    if (value == null) return null;
    if (_ignoredAdvisories is EqualUnmodifiableListView)
      return _ignoredAdvisories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Environment? environment;
  @override
  final Dependencies? dependencyOverrides;
  @override
  final Flutter? flutter;

  @override
  String toString() {
    return 'PubspecResource(name: $name, dependencies: $dependencies, devDependencies: $devDependencies, version: $version, description: $description, homepage: $homepage, repository: $repository, issueTracker: $issueTracker, documentation: $documentation, executables: $executables, platforms: $platforms, publishTo: $publishTo, funding: $funding, falseSecrets: $falseSecrets, screenshots: $screenshots, topics: $topics, ignoredAdvisories: $ignoredAdvisories, environment: $environment, dependencyOverrides: $dependencyOverrides, flutter: $flutter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubspecResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.dependencies, dependencies) ||
                other.dependencies == dependencies) &&
            (identical(other.devDependencies, devDependencies) ||
                other.devDependencies == devDependencies) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.homepage, homepage) ||
                other.homepage == homepage) &&
            (identical(other.repository, repository) ||
                other.repository == repository) &&
            (identical(other.issueTracker, issueTracker) ||
                other.issueTracker == issueTracker) &&
            (identical(other.documentation, documentation) ||
                other.documentation == documentation) &&
            const DeepCollectionEquality()
                .equals(other._executables, _executables) &&
            (identical(other.platforms, platforms) ||
                other.platforms == platforms) &&
            (identical(other.publishTo, publishTo) ||
                other.publishTo == publishTo) &&
            const DeepCollectionEquality().equals(other._funding, _funding) &&
            const DeepCollectionEquality()
                .equals(other._falseSecrets, _falseSecrets) &&
            const DeepCollectionEquality()
                .equals(other._screenshots, _screenshots) &&
            const DeepCollectionEquality().equals(other._topics, _topics) &&
            const DeepCollectionEquality()
                .equals(other._ignoredAdvisories, _ignoredAdvisories) &&
            (identical(other.environment, environment) ||
                other.environment == environment) &&
            (identical(other.dependencyOverrides, dependencyOverrides) ||
                other.dependencyOverrides == dependencyOverrides) &&
            (identical(other.flutter, flutter) || other.flutter == flutter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        dependencies,
        devDependencies,
        version,
        description,
        homepage,
        repository,
        issueTracker,
        documentation,
        const DeepCollectionEquality().hash(_executables),
        platforms,
        publishTo,
        const DeepCollectionEquality().hash(_funding),
        const DeepCollectionEquality().hash(_falseSecrets),
        const DeepCollectionEquality().hash(_screenshots),
        const DeepCollectionEquality().hash(_topics),
        const DeepCollectionEquality().hash(_ignoredAdvisories),
        environment,
        dependencyOverrides,
        flutter
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PubspecResourceImplCopyWith<_$PubspecResourceImpl> get copyWith =>
      __$$PubspecResourceImplCopyWithImpl<_$PubspecResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PubspecResourceImplToJson(
      this,
    );
  }
}

abstract class _PubspecResource implements PubspecResource {
  const factory _PubspecResource(
      {required final String name,
      final Dependencies? dependencies,
      final Dependencies? devDependencies,
      final String? version,
      final String? description,
      final String? homepage,
      final String? repository,
      final String? issueTracker,
      final String? documentation,
      @JsonKey(fromJson: PubspecResource.executablesFromJson)
      final List<Executable>? executables,
      final Platforms? platforms,
      final String? publishTo,
      final List<String>? funding,
      final List<String>? falseSecrets,
      final List<Screenshot>? screenshots,
      final List<String>? topics,
      final List<String>? ignoredAdvisories,
      final Environment? environment,
      final Dependencies? dependencyOverrides,
      final Flutter? flutter}) = _$PubspecResourceImpl;

  factory _PubspecResource.fromJson(Map<String, dynamic> json) =
      _$PubspecResourceImpl.fromJson;

  @override
  String get name;
  @override
  Dependencies? get dependencies;
  @override
  Dependencies? get devDependencies;
  @override
  String? get version;
  @override
  String? get description;
  @override
  String? get homepage;
  @override
  String? get repository;
  @override
  String? get issueTracker;
  @override
  String? get documentation;
  @override
  @JsonKey(fromJson: PubspecResource.executablesFromJson)
  List<Executable>? get executables;
  @override
  Platforms? get platforms;
  @override
  String? get publishTo;
  @override
  List<String>? get funding;
  @override
  List<String>? get falseSecrets;
  @override
  List<Screenshot>? get screenshots;
  @override
  List<String>? get topics;
  @override
  List<String>? get ignoredAdvisories;
  @override
  Environment? get environment;
  @override
  Dependencies? get dependencyOverrides;
  @override
  Flutter? get flutter;
  @override
  @JsonKey(ignore: true)
  _$$PubspecResourceImplCopyWith<_$PubspecResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dependencies _$DependenciesFromJson(Map<String, dynamic> json) {
  return _Dependencies.fromJson(json);
}

/// @nodoc
mixin _$Dependencies {
  Map<String, Dependency>? get dependencies =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DependenciesCopyWith<Dependencies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependenciesCopyWith<$Res> {
  factory $DependenciesCopyWith(
          Dependencies value, $Res Function(Dependencies) then) =
      _$DependenciesCopyWithImpl<$Res, Dependencies>;
  @useResult
  $Res call({Map<String, Dependency>? dependencies});
}

/// @nodoc
class _$DependenciesCopyWithImpl<$Res, $Val extends Dependencies>
    implements $DependenciesCopyWith<$Res> {
  _$DependenciesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dependencies = freezed,
  }) {
    return _then(_value.copyWith(
      dependencies: freezed == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, Dependency>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DependenciesImplCopyWith<$Res>
    implements $DependenciesCopyWith<$Res> {
  factory _$$DependenciesImplCopyWith(
          _$DependenciesImpl value, $Res Function(_$DependenciesImpl) then) =
      __$$DependenciesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Dependency>? dependencies});
}

/// @nodoc
class __$$DependenciesImplCopyWithImpl<$Res>
    extends _$DependenciesCopyWithImpl<$Res, _$DependenciesImpl>
    implements _$$DependenciesImplCopyWith<$Res> {
  __$$DependenciesImplCopyWithImpl(
      _$DependenciesImpl _value, $Res Function(_$DependenciesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dependencies = freezed,
  }) {
    return _then(_$DependenciesImpl(
      dependencies: freezed == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Map<String, Dependency>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DependenciesImpl implements _Dependencies {
  const _$DependenciesImpl({final Map<String, Dependency>? dependencies})
      : _dependencies = dependencies;

  factory _$DependenciesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DependenciesImplFromJson(json);

  final Map<String, Dependency>? _dependencies;
  @override
  Map<String, Dependency>? get dependencies {
    final value = _dependencies;
    if (value == null) return null;
    if (_dependencies is EqualUnmodifiableMapView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Dependencies(dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DependenciesImpl &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dependencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DependenciesImplCopyWith<_$DependenciesImpl> get copyWith =>
      __$$DependenciesImplCopyWithImpl<_$DependenciesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DependenciesImplToJson(
      this,
    );
  }
}

abstract class _Dependencies implements Dependencies {
  const factory _Dependencies({final Map<String, Dependency>? dependencies}) =
      _$DependenciesImpl;

  factory _Dependencies.fromJson(Map<String, dynamic> json) =
      _$DependenciesImpl.fromJson;

  @override
  Map<String, Dependency>? get dependencies;
  @override
  @JsonKey(ignore: true)
  _$$DependenciesImplCopyWith<_$DependenciesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dependency _$DependencyFromJson(Map<String, dynamic> json) {
  return _Dependency.fromJson(json);
}

/// @nodoc
mixin _$Dependency {
  String? get version => throw _privateConstructorUsedError;
  String? get sdk => throw _privateConstructorUsedError;
  Hosted? get hosted => throw _privateConstructorUsedError;
  Git? get git => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DependencyCopyWith<Dependency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DependencyCopyWith<$Res> {
  factory $DependencyCopyWith(
          Dependency value, $Res Function(Dependency) then) =
      _$DependencyCopyWithImpl<$Res, Dependency>;
  @useResult
  $Res call(
      {String? version, String? sdk, Hosted? hosted, Git? git, String? path});

  $HostedCopyWith<$Res>? get hosted;
  $GitCopyWith<$Res>? get git;
}

/// @nodoc
class _$DependencyCopyWithImpl<$Res, $Val extends Dependency>
    implements $DependencyCopyWith<$Res> {
  _$DependencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? sdk = freezed,
    Object? hosted = freezed,
    Object? git = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      sdk: freezed == sdk
          ? _value.sdk
          : sdk // ignore: cast_nullable_to_non_nullable
              as String?,
      hosted: freezed == hosted
          ? _value.hosted
          : hosted // ignore: cast_nullable_to_non_nullable
              as Hosted?,
      git: freezed == git
          ? _value.git
          : git // ignore: cast_nullable_to_non_nullable
              as Git?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HostedCopyWith<$Res>? get hosted {
    if (_value.hosted == null) {
      return null;
    }

    return $HostedCopyWith<$Res>(_value.hosted!, (value) {
      return _then(_value.copyWith(hosted: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GitCopyWith<$Res>? get git {
    if (_value.git == null) {
      return null;
    }

    return $GitCopyWith<$Res>(_value.git!, (value) {
      return _then(_value.copyWith(git: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DependencyImplCopyWith<$Res>
    implements $DependencyCopyWith<$Res> {
  factory _$$DependencyImplCopyWith(
          _$DependencyImpl value, $Res Function(_$DependencyImpl) then) =
      __$$DependencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? version, String? sdk, Hosted? hosted, Git? git, String? path});

  @override
  $HostedCopyWith<$Res>? get hosted;
  @override
  $GitCopyWith<$Res>? get git;
}

/// @nodoc
class __$$DependencyImplCopyWithImpl<$Res>
    extends _$DependencyCopyWithImpl<$Res, _$DependencyImpl>
    implements _$$DependencyImplCopyWith<$Res> {
  __$$DependencyImplCopyWithImpl(
      _$DependencyImpl _value, $Res Function(_$DependencyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? sdk = freezed,
    Object? hosted = freezed,
    Object? git = freezed,
    Object? path = freezed,
  }) {
    return _then(_$DependencyImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      sdk: freezed == sdk
          ? _value.sdk
          : sdk // ignore: cast_nullable_to_non_nullable
              as String?,
      hosted: freezed == hosted
          ? _value.hosted
          : hosted // ignore: cast_nullable_to_non_nullable
              as Hosted?,
      git: freezed == git
          ? _value.git
          : git // ignore: cast_nullable_to_non_nullable
              as Git?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DependencyImpl implements _Dependency {
  const _$DependencyImpl(
      {this.version, this.sdk, this.hosted, this.git, this.path});

  factory _$DependencyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DependencyImplFromJson(json);

  @override
  final String? version;
  @override
  final String? sdk;
  @override
  final Hosted? hosted;
  @override
  final Git? git;
  @override
  final String? path;

  @override
  String toString() {
    return 'Dependency(version: $version, sdk: $sdk, hosted: $hosted, git: $git, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DependencyImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.sdk, sdk) || other.sdk == sdk) &&
            (identical(other.hosted, hosted) || other.hosted == hosted) &&
            (identical(other.git, git) || other.git == git) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, sdk, hosted, git, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DependencyImplCopyWith<_$DependencyImpl> get copyWith =>
      __$$DependencyImplCopyWithImpl<_$DependencyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DependencyImplToJson(
      this,
    );
  }
}

abstract class _Dependency implements Dependency {
  const factory _Dependency(
      {final String? version,
      final String? sdk,
      final Hosted? hosted,
      final Git? git,
      final String? path}) = _$DependencyImpl;

  factory _Dependency.fromJson(Map<String, dynamic> json) =
      _$DependencyImpl.fromJson;

  @override
  String? get version;
  @override
  String? get sdk;
  @override
  Hosted? get hosted;
  @override
  Git? get git;
  @override
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$DependencyImplCopyWith<_$DependencyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hosted _$HostedFromJson(Map<String, dynamic> json) {
  return _Hosted.fromJson(json);
}

/// @nodoc
mixin _$Hosted {
  String? get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostedCopyWith<Hosted> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostedCopyWith<$Res> {
  factory $HostedCopyWith(Hosted value, $Res Function(Hosted) then) =
      _$HostedCopyWithImpl<$Res, Hosted>;
  @useResult
  $Res call({String? name, String url});
}

/// @nodoc
class _$HostedCopyWithImpl<$Res, $Val extends Hosted>
    implements $HostedCopyWith<$Res> {
  _$HostedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HostedImplCopyWith<$Res> implements $HostedCopyWith<$Res> {
  factory _$$HostedImplCopyWith(
          _$HostedImpl value, $Res Function(_$HostedImpl) then) =
      __$$HostedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String url});
}

/// @nodoc
class __$$HostedImplCopyWithImpl<$Res>
    extends _$HostedCopyWithImpl<$Res, _$HostedImpl>
    implements _$$HostedImplCopyWith<$Res> {
  __$$HostedImplCopyWithImpl(
      _$HostedImpl _value, $Res Function(_$HostedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? url = null,
  }) {
    return _then(_$HostedImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HostedImpl implements _Hosted {
  const _$HostedImpl({this.name, required this.url});

  factory _$HostedImpl.fromJson(Map<String, dynamic> json) =>
      _$$HostedImplFromJson(json);

  @override
  final String? name;
  @override
  final String url;

  @override
  String toString() {
    return 'Hosted(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HostedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HostedImplCopyWith<_$HostedImpl> get copyWith =>
      __$$HostedImplCopyWithImpl<_$HostedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HostedImplToJson(
      this,
    );
  }
}

abstract class _Hosted implements Hosted {
  const factory _Hosted({final String? name, required final String url}) =
      _$HostedImpl;

  factory _Hosted.fromJson(Map<String, dynamic> json) = _$HostedImpl.fromJson;

  @override
  String? get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$HostedImplCopyWith<_$HostedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Git _$GitFromJson(Map<String, dynamic> json) {
  return _Git.fromJson(json);
}

/// @nodoc
mixin _$Git {
  String get url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  String? get ref => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GitCopyWith<Git> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GitCopyWith<$Res> {
  factory $GitCopyWith(Git value, $Res Function(Git) then) =
      _$GitCopyWithImpl<$Res, Git>;
  @useResult
  $Res call({String url, String? path, String? ref});
}

/// @nodoc
class _$GitCopyWithImpl<$Res, $Val extends Git> implements $GitCopyWith<$Res> {
  _$GitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? path = freezed,
    Object? ref = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GitImplCopyWith<$Res> implements $GitCopyWith<$Res> {
  factory _$$GitImplCopyWith(_$GitImpl value, $Res Function(_$GitImpl) then) =
      __$$GitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String? path, String? ref});
}

/// @nodoc
class __$$GitImplCopyWithImpl<$Res> extends _$GitCopyWithImpl<$Res, _$GitImpl>
    implements _$$GitImplCopyWith<$Res> {
  __$$GitImplCopyWithImpl(_$GitImpl _value, $Res Function(_$GitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? path = freezed,
    Object? ref = freezed,
  }) {
    return _then(_$GitImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      ref: freezed == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GitImpl implements _Git {
  const _$GitImpl({required this.url, this.path, this.ref});

  factory _$GitImpl.fromJson(Map<String, dynamic> json) =>
      _$$GitImplFromJson(json);

  @override
  final String url;
  @override
  final String? path;
  @override
  final String? ref;

  @override
  String toString() {
    return 'Git(url: $url, path: $path, ref: $ref)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GitImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, path, ref);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GitImplCopyWith<_$GitImpl> get copyWith =>
      __$$GitImplCopyWithImpl<_$GitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GitImplToJson(
      this,
    );
  }
}

abstract class _Git implements Git {
  const factory _Git(
      {required final String url,
      final String? path,
      final String? ref}) = _$GitImpl;

  factory _Git.fromJson(Map<String, dynamic> json) = _$GitImpl.fromJson;

  @override
  String get url;
  @override
  String? get path;
  @override
  String? get ref;
  @override
  @JsonKey(ignore: true)
  _$$GitImplCopyWith<_$GitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Executable _$ExecutableFromJson(Map<String, dynamic> json) {
  return _Executable.fromJson(json);
}

/// @nodoc
mixin _$Executable {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExecutableCopyWith<Executable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExecutableCopyWith<$Res> {
  factory $ExecutableCopyWith(
          Executable value, $Res Function(Executable) then) =
      _$ExecutableCopyWithImpl<$Res, Executable>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$ExecutableCopyWithImpl<$Res, $Val extends Executable>
    implements $ExecutableCopyWith<$Res> {
  _$ExecutableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExecutableImplCopyWith<$Res>
    implements $ExecutableCopyWith<$Res> {
  factory _$$ExecutableImplCopyWith(
          _$ExecutableImpl value, $Res Function(_$ExecutableImpl) then) =
      __$$ExecutableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$ExecutableImplCopyWithImpl<$Res>
    extends _$ExecutableCopyWithImpl<$Res, _$ExecutableImpl>
    implements _$$ExecutableImplCopyWith<$Res> {
  __$$ExecutableImplCopyWithImpl(
      _$ExecutableImpl _value, $Res Function(_$ExecutableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$ExecutableImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExecutableImpl implements _Executable {
  const _$ExecutableImpl({required this.name});

  factory _$ExecutableImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExecutableImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'Executable(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExecutableImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExecutableImplCopyWith<_$ExecutableImpl> get copyWith =>
      __$$ExecutableImplCopyWithImpl<_$ExecutableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExecutableImplToJson(
      this,
    );
  }
}

abstract class _Executable implements Executable {
  const factory _Executable({required final String name}) = _$ExecutableImpl;

  factory _Executable.fromJson(Map<String, dynamic> json) =
      _$ExecutableImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$ExecutableImplCopyWith<_$ExecutableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Platforms _$PlatformsFromJson(Map<String, dynamic> json) {
  return _Platforms.fromJson(json);
}

/// @nodoc
mixin _$Platforms {
  bool? get android => throw _privateConstructorUsedError;
  bool? get ios => throw _privateConstructorUsedError;
  bool? get linux => throw _privateConstructorUsedError;
  bool? get macos => throw _privateConstructorUsedError;
  bool? get web => throw _privateConstructorUsedError;
  bool? get windows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlatformsCopyWith<Platforms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlatformsCopyWith<$Res> {
  factory $PlatformsCopyWith(Platforms value, $Res Function(Platforms) then) =
      _$PlatformsCopyWithImpl<$Res, Platforms>;
  @useResult
  $Res call(
      {bool? android,
      bool? ios,
      bool? linux,
      bool? macos,
      bool? web,
      bool? windows});
}

/// @nodoc
class _$PlatformsCopyWithImpl<$Res, $Val extends Platforms>
    implements $PlatformsCopyWith<$Res> {
  _$PlatformsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? android = freezed,
    Object? ios = freezed,
    Object? linux = freezed,
    Object? macos = freezed,
    Object? web = freezed,
    Object? windows = freezed,
  }) {
    return _then(_value.copyWith(
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as bool?,
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as bool?,
      linux: freezed == linux
          ? _value.linux
          : linux // ignore: cast_nullable_to_non_nullable
              as bool?,
      macos: freezed == macos
          ? _value.macos
          : macos // ignore: cast_nullable_to_non_nullable
              as bool?,
      web: freezed == web
          ? _value.web
          : web // ignore: cast_nullable_to_non_nullable
              as bool?,
      windows: freezed == windows
          ? _value.windows
          : windows // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlatformsImplCopyWith<$Res>
    implements $PlatformsCopyWith<$Res> {
  factory _$$PlatformsImplCopyWith(
          _$PlatformsImpl value, $Res Function(_$PlatformsImpl) then) =
      __$$PlatformsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? android,
      bool? ios,
      bool? linux,
      bool? macos,
      bool? web,
      bool? windows});
}

/// @nodoc
class __$$PlatformsImplCopyWithImpl<$Res>
    extends _$PlatformsCopyWithImpl<$Res, _$PlatformsImpl>
    implements _$$PlatformsImplCopyWith<$Res> {
  __$$PlatformsImplCopyWithImpl(
      _$PlatformsImpl _value, $Res Function(_$PlatformsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? android = freezed,
    Object? ios = freezed,
    Object? linux = freezed,
    Object? macos = freezed,
    Object? web = freezed,
    Object? windows = freezed,
  }) {
    return _then(_$PlatformsImpl(
      android: freezed == android
          ? _value.android
          : android // ignore: cast_nullable_to_non_nullable
              as bool?,
      ios: freezed == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as bool?,
      linux: freezed == linux
          ? _value.linux
          : linux // ignore: cast_nullable_to_non_nullable
              as bool?,
      macos: freezed == macos
          ? _value.macos
          : macos // ignore: cast_nullable_to_non_nullable
              as bool?,
      web: freezed == web
          ? _value.web
          : web // ignore: cast_nullable_to_non_nullable
              as bool?,
      windows: freezed == windows
          ? _value.windows
          : windows // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlatformsImpl implements _Platforms {
  const _$PlatformsImpl(
      {this.android, this.ios, this.linux, this.macos, this.web, this.windows});

  factory _$PlatformsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlatformsImplFromJson(json);

  @override
  final bool? android;
  @override
  final bool? ios;
  @override
  final bool? linux;
  @override
  final bool? macos;
  @override
  final bool? web;
  @override
  final bool? windows;

  @override
  String toString() {
    return 'Platforms(android: $android, ios: $ios, linux: $linux, macos: $macos, web: $web, windows: $windows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformsImpl &&
            (identical(other.android, android) || other.android == android) &&
            (identical(other.ios, ios) || other.ios == ios) &&
            (identical(other.linux, linux) || other.linux == linux) &&
            (identical(other.macos, macos) || other.macos == macos) &&
            (identical(other.web, web) || other.web == web) &&
            (identical(other.windows, windows) || other.windows == windows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, android, ios, linux, macos, web, windows);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformsImplCopyWith<_$PlatformsImpl> get copyWith =>
      __$$PlatformsImplCopyWithImpl<_$PlatformsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlatformsImplToJson(
      this,
    );
  }
}

abstract class _Platforms implements Platforms {
  const factory _Platforms(
      {final bool? android,
      final bool? ios,
      final bool? linux,
      final bool? macos,
      final bool? web,
      final bool? windows}) = _$PlatformsImpl;

  factory _Platforms.fromJson(Map<String, dynamic> json) =
      _$PlatformsImpl.fromJson;

  @override
  bool? get android;
  @override
  bool? get ios;
  @override
  bool? get linux;
  @override
  bool? get macos;
  @override
  bool? get web;
  @override
  bool? get windows;
  @override
  @JsonKey(ignore: true)
  _$$PlatformsImplCopyWith<_$PlatformsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Screenshot _$ScreenshotFromJson(Map<String, dynamic> json) {
  return _Screenshot.fromJson(json);
}

/// @nodoc
mixin _$Screenshot {
  String get description => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScreenshotCopyWith<Screenshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScreenshotCopyWith<$Res> {
  factory $ScreenshotCopyWith(
          Screenshot value, $Res Function(Screenshot) then) =
      _$ScreenshotCopyWithImpl<$Res, Screenshot>;
  @useResult
  $Res call({String description, String path});
}

/// @nodoc
class _$ScreenshotCopyWithImpl<$Res, $Val extends Screenshot>
    implements $ScreenshotCopyWith<$Res> {
  _$ScreenshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScreenshotImplCopyWith<$Res>
    implements $ScreenshotCopyWith<$Res> {
  factory _$$ScreenshotImplCopyWith(
          _$ScreenshotImpl value, $Res Function(_$ScreenshotImpl) then) =
      __$$ScreenshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, String path});
}

/// @nodoc
class __$$ScreenshotImplCopyWithImpl<$Res>
    extends _$ScreenshotCopyWithImpl<$Res, _$ScreenshotImpl>
    implements _$$ScreenshotImplCopyWith<$Res> {
  __$$ScreenshotImplCopyWithImpl(
      _$ScreenshotImpl _value, $Res Function(_$ScreenshotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? path = null,
  }) {
    return _then(_$ScreenshotImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScreenshotImpl implements _Screenshot {
  const _$ScreenshotImpl({required this.description, required this.path});

  factory _$ScreenshotImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScreenshotImplFromJson(json);

  @override
  final String description;
  @override
  final String path;

  @override
  String toString() {
    return 'Screenshot(description: $description, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScreenshotImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScreenshotImplCopyWith<_$ScreenshotImpl> get copyWith =>
      __$$ScreenshotImplCopyWithImpl<_$ScreenshotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScreenshotImplToJson(
      this,
    );
  }
}

abstract class _Screenshot implements Screenshot {
  const factory _Screenshot(
      {required final String description,
      required final String path}) = _$ScreenshotImpl;

  factory _Screenshot.fromJson(Map<String, dynamic> json) =
      _$ScreenshotImpl.fromJson;

  @override
  String get description;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$ScreenshotImplCopyWith<_$ScreenshotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Environment _$EnvironmentFromJson(Map<String, dynamic> json) {
  return _Environment.fromJson(json);
}

/// @nodoc
mixin _$Environment {
  Map<String, VersionConstraint>? get environment =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnvironmentCopyWith<Environment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnvironmentCopyWith<$Res> {
  factory $EnvironmentCopyWith(
          Environment value, $Res Function(Environment) then) =
      _$EnvironmentCopyWithImpl<$Res, Environment>;
  @useResult
  $Res call({Map<String, VersionConstraint>? environment});
}

/// @nodoc
class _$EnvironmentCopyWithImpl<$Res, $Val extends Environment>
    implements $EnvironmentCopyWith<$Res> {
  _$EnvironmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environment = freezed,
  }) {
    return _then(_value.copyWith(
      environment: freezed == environment
          ? _value.environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Map<String, VersionConstraint>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnvironmentImplCopyWith<$Res>
    implements $EnvironmentCopyWith<$Res> {
  factory _$$EnvironmentImplCopyWith(
          _$EnvironmentImpl value, $Res Function(_$EnvironmentImpl) then) =
      __$$EnvironmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, VersionConstraint>? environment});
}

/// @nodoc
class __$$EnvironmentImplCopyWithImpl<$Res>
    extends _$EnvironmentCopyWithImpl<$Res, _$EnvironmentImpl>
    implements _$$EnvironmentImplCopyWith<$Res> {
  __$$EnvironmentImplCopyWithImpl(
      _$EnvironmentImpl _value, $Res Function(_$EnvironmentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? environment = freezed,
  }) {
    return _then(_$EnvironmentImpl(
      environment: freezed == environment
          ? _value._environment
          : environment // ignore: cast_nullable_to_non_nullable
              as Map<String, VersionConstraint>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnvironmentImpl implements _Environment {
  const _$EnvironmentImpl({final Map<String, VersionConstraint>? environment})
      : _environment = environment;

  factory _$EnvironmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnvironmentImplFromJson(json);

  final Map<String, VersionConstraint>? _environment;
  @override
  Map<String, VersionConstraint>? get environment {
    final value = _environment;
    if (value == null) return null;
    if (_environment is EqualUnmodifiableMapView) return _environment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'Environment(environment: $environment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnvironmentImpl &&
            const DeepCollectionEquality()
                .equals(other._environment, _environment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_environment));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      __$$EnvironmentImplCopyWithImpl<_$EnvironmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnvironmentImplToJson(
      this,
    );
  }
}

abstract class _Environment implements Environment {
  const factory _Environment(
      {final Map<String, VersionConstraint>? environment}) = _$EnvironmentImpl;

  factory _Environment.fromJson(Map<String, dynamic> json) =
      _$EnvironmentImpl.fromJson;

  @override
  Map<String, VersionConstraint>? get environment;
  @override
  @JsonKey(ignore: true)
  _$$EnvironmentImplCopyWith<_$EnvironmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

VersionConstraint _$VersionConstraintFromJson(Map<String, dynamic> json) {
  return _VersionConstraint.fromJson(json);
}

/// @nodoc
mixin _$VersionConstraint {
  String? get version => throw _privateConstructorUsedError;
  String? get constraint => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VersionConstraintCopyWith<VersionConstraint> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VersionConstraintCopyWith<$Res> {
  factory $VersionConstraintCopyWith(
          VersionConstraint value, $Res Function(VersionConstraint) then) =
      _$VersionConstraintCopyWithImpl<$Res, VersionConstraint>;
  @useResult
  $Res call({String? version, String? constraint});
}

/// @nodoc
class _$VersionConstraintCopyWithImpl<$Res, $Val extends VersionConstraint>
    implements $VersionConstraintCopyWith<$Res> {
  _$VersionConstraintCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? constraint = freezed,
  }) {
    return _then(_value.copyWith(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VersionConstraintImplCopyWith<$Res>
    implements $VersionConstraintCopyWith<$Res> {
  factory _$$VersionConstraintImplCopyWith(_$VersionConstraintImpl value,
          $Res Function(_$VersionConstraintImpl) then) =
      __$$VersionConstraintImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? version, String? constraint});
}

/// @nodoc
class __$$VersionConstraintImplCopyWithImpl<$Res>
    extends _$VersionConstraintCopyWithImpl<$Res, _$VersionConstraintImpl>
    implements _$$VersionConstraintImplCopyWith<$Res> {
  __$$VersionConstraintImplCopyWithImpl(_$VersionConstraintImpl _value,
      $Res Function(_$VersionConstraintImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? constraint = freezed,
  }) {
    return _then(_$VersionConstraintImpl(
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      constraint: freezed == constraint
          ? _value.constraint
          : constraint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VersionConstraintImpl implements _VersionConstraint {
  const _$VersionConstraintImpl({this.version, this.constraint});

  factory _$VersionConstraintImpl.fromJson(Map<String, dynamic> json) =>
      _$$VersionConstraintImplFromJson(json);

  @override
  final String? version;
  @override
  final String? constraint;

  @override
  String toString() {
    return 'VersionConstraint(version: $version, constraint: $constraint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VersionConstraintImpl &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.constraint, constraint) ||
                other.constraint == constraint));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, version, constraint);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VersionConstraintImplCopyWith<_$VersionConstraintImpl> get copyWith =>
      __$$VersionConstraintImplCopyWithImpl<_$VersionConstraintImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VersionConstraintImplToJson(
      this,
    );
  }
}

abstract class _VersionConstraint implements VersionConstraint {
  const factory _VersionConstraint(
      {final String? version,
      final String? constraint}) = _$VersionConstraintImpl;

  factory _VersionConstraint.fromJson(Map<String, dynamic> json) =
      _$VersionConstraintImpl.fromJson;

  @override
  String? get version;
  @override
  String? get constraint;
  @override
  @JsonKey(ignore: true)
  _$$VersionConstraintImplCopyWith<_$VersionConstraintImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Flutter _$FlutterFromJson(Map<String, dynamic> json) {
  return _Flutter.fromJson(json);
}

/// @nodoc
mixin _$Flutter {
  bool? get usesMaterialDesign => throw _privateConstructorUsedError;
  bool? get generate => throw _privateConstructorUsedError;
  @JsonKey(fromJson: Flutter.assetToJson)
  List<Asset>? get assets => throw _privateConstructorUsedError;
  List<Font>? get fonts => throw _privateConstructorUsedError;
  List<String>? get shaders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlutterCopyWith<Flutter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlutterCopyWith<$Res> {
  factory $FlutterCopyWith(Flutter value, $Res Function(Flutter) then) =
      _$FlutterCopyWithImpl<$Res, Flutter>;
  @useResult
  $Res call(
      {bool? usesMaterialDesign,
      bool? generate,
      @JsonKey(fromJson: Flutter.assetToJson) List<Asset>? assets,
      List<Font>? fonts,
      List<String>? shaders});
}

/// @nodoc
class _$FlutterCopyWithImpl<$Res, $Val extends Flutter>
    implements $FlutterCopyWith<$Res> {
  _$FlutterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usesMaterialDesign = freezed,
    Object? generate = freezed,
    Object? assets = freezed,
    Object? fonts = freezed,
    Object? shaders = freezed,
  }) {
    return _then(_value.copyWith(
      usesMaterialDesign: freezed == usesMaterialDesign
          ? _value.usesMaterialDesign
          : usesMaterialDesign // ignore: cast_nullable_to_non_nullable
              as bool?,
      generate: freezed == generate
          ? _value.generate
          : generate // ignore: cast_nullable_to_non_nullable
              as bool?,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<Asset>?,
      fonts: freezed == fonts
          ? _value.fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as List<Font>?,
      shaders: freezed == shaders
          ? _value.shaders
          : shaders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlutterImplCopyWith<$Res> implements $FlutterCopyWith<$Res> {
  factory _$$FlutterImplCopyWith(
          _$FlutterImpl value, $Res Function(_$FlutterImpl) then) =
      __$$FlutterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? usesMaterialDesign,
      bool? generate,
      @JsonKey(fromJson: Flutter.assetToJson) List<Asset>? assets,
      List<Font>? fonts,
      List<String>? shaders});
}

/// @nodoc
class __$$FlutterImplCopyWithImpl<$Res>
    extends _$FlutterCopyWithImpl<$Res, _$FlutterImpl>
    implements _$$FlutterImplCopyWith<$Res> {
  __$$FlutterImplCopyWithImpl(
      _$FlutterImpl _value, $Res Function(_$FlutterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usesMaterialDesign = freezed,
    Object? generate = freezed,
    Object? assets = freezed,
    Object? fonts = freezed,
    Object? shaders = freezed,
  }) {
    return _then(_$FlutterImpl(
      usesMaterialDesign: freezed == usesMaterialDesign
          ? _value.usesMaterialDesign
          : usesMaterialDesign // ignore: cast_nullable_to_non_nullable
              as bool?,
      generate: freezed == generate
          ? _value.generate
          : generate // ignore: cast_nullable_to_non_nullable
              as bool?,
      assets: freezed == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<Asset>?,
      fonts: freezed == fonts
          ? _value._fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as List<Font>?,
      shaders: freezed == shaders
          ? _value._shaders
          : shaders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlutterImpl implements _Flutter {
  const _$FlutterImpl(
      {this.usesMaterialDesign,
      this.generate,
      @JsonKey(fromJson: Flutter.assetToJson) final List<Asset>? assets,
      final List<Font>? fonts,
      final List<String>? shaders})
      : _assets = assets,
        _fonts = fonts,
        _shaders = shaders;

  factory _$FlutterImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlutterImplFromJson(json);

  @override
  final bool? usesMaterialDesign;
  @override
  final bool? generate;
  final List<Asset>? _assets;
  @override
  @JsonKey(fromJson: Flutter.assetToJson)
  List<Asset>? get assets {
    final value = _assets;
    if (value == null) return null;
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Font>? _fonts;
  @override
  List<Font>? get fonts {
    final value = _fonts;
    if (value == null) return null;
    if (_fonts is EqualUnmodifiableListView) return _fonts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _shaders;
  @override
  List<String>? get shaders {
    final value = _shaders;
    if (value == null) return null;
    if (_shaders is EqualUnmodifiableListView) return _shaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Flutter(usesMaterialDesign: $usesMaterialDesign, generate: $generate, assets: $assets, fonts: $fonts, shaders: $shaders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlutterImpl &&
            (identical(other.usesMaterialDesign, usesMaterialDesign) ||
                other.usesMaterialDesign == usesMaterialDesign) &&
            (identical(other.generate, generate) ||
                other.generate == generate) &&
            const DeepCollectionEquality().equals(other._assets, _assets) &&
            const DeepCollectionEquality().equals(other._fonts, _fonts) &&
            const DeepCollectionEquality().equals(other._shaders, _shaders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      usesMaterialDesign,
      generate,
      const DeepCollectionEquality().hash(_assets),
      const DeepCollectionEquality().hash(_fonts),
      const DeepCollectionEquality().hash(_shaders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlutterImplCopyWith<_$FlutterImpl> get copyWith =>
      __$$FlutterImplCopyWithImpl<_$FlutterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlutterImplToJson(
      this,
    );
  }
}

abstract class _Flutter implements Flutter {
  const factory _Flutter(
      {final bool? usesMaterialDesign,
      final bool? generate,
      @JsonKey(fromJson: Flutter.assetToJson) final List<Asset>? assets,
      final List<Font>? fonts,
      final List<String>? shaders}) = _$FlutterImpl;

  factory _Flutter.fromJson(Map<String, dynamic> json) = _$FlutterImpl.fromJson;

  @override
  bool? get usesMaterialDesign;
  @override
  bool? get generate;
  @override
  @JsonKey(fromJson: Flutter.assetToJson)
  List<Asset>? get assets;
  @override
  List<Font>? get fonts;
  @override
  List<String>? get shaders;
  @override
  @JsonKey(ignore: true)
  _$$FlutterImplCopyWith<_$FlutterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Asset _$AssetFromJson(Map<String, dynamic> json) {
  return _Asset.fromJson(json);
}

/// @nodoc
mixin _$Asset {
  String get path => throw _privateConstructorUsedError;
  List<String>? get flavors => throw _privateConstructorUsedError;
  List<Transformer>? get transformers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssetCopyWith<Asset> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetCopyWith<$Res> {
  factory $AssetCopyWith(Asset value, $Res Function(Asset) then) =
      _$AssetCopyWithImpl<$Res, Asset>;
  @useResult
  $Res call(
      {String path, List<String>? flavors, List<Transformer>? transformers});
}

/// @nodoc
class _$AssetCopyWithImpl<$Res, $Val extends Asset>
    implements $AssetCopyWith<$Res> {
  _$AssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? flavors = freezed,
    Object? transformers = freezed,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      flavors: freezed == flavors
          ? _value.flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      transformers: freezed == transformers
          ? _value.transformers
          : transformers // ignore: cast_nullable_to_non_nullable
              as List<Transformer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssetImplCopyWith<$Res> implements $AssetCopyWith<$Res> {
  factory _$$AssetImplCopyWith(
          _$AssetImpl value, $Res Function(_$AssetImpl) then) =
      __$$AssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String path, List<String>? flavors, List<Transformer>? transformers});
}

/// @nodoc
class __$$AssetImplCopyWithImpl<$Res>
    extends _$AssetCopyWithImpl<$Res, _$AssetImpl>
    implements _$$AssetImplCopyWith<$Res> {
  __$$AssetImplCopyWithImpl(
      _$AssetImpl _value, $Res Function(_$AssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
    Object? flavors = freezed,
    Object? transformers = freezed,
  }) {
    return _then(_$AssetImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      flavors: freezed == flavors
          ? _value._flavors
          : flavors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      transformers: freezed == transformers
          ? _value._transformers
          : transformers // ignore: cast_nullable_to_non_nullable
              as List<Transformer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AssetImpl implements _Asset {
  const _$AssetImpl(
      {required this.path,
      final List<String>? flavors,
      final List<Transformer>? transformers})
      : _flavors = flavors,
        _transformers = transformers;

  factory _$AssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AssetImplFromJson(json);

  @override
  final String path;
  final List<String>? _flavors;
  @override
  List<String>? get flavors {
    final value = _flavors;
    if (value == null) return null;
    if (_flavors is EqualUnmodifiableListView) return _flavors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Transformer>? _transformers;
  @override
  List<Transformer>? get transformers {
    final value = _transformers;
    if (value == null) return null;
    if (_transformers is EqualUnmodifiableListView) return _transformers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Asset(path: $path, flavors: $flavors, transformers: $transformers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetImpl &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other._flavors, _flavors) &&
            const DeepCollectionEquality()
                .equals(other._transformers, _transformers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      path,
      const DeepCollectionEquality().hash(_flavors),
      const DeepCollectionEquality().hash(_transformers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetImplCopyWith<_$AssetImpl> get copyWith =>
      __$$AssetImplCopyWithImpl<_$AssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AssetImplToJson(
      this,
    );
  }
}

abstract class _Asset implements Asset {
  const factory _Asset(
      {required final String path,
      final List<String>? flavors,
      final List<Transformer>? transformers}) = _$AssetImpl;

  factory _Asset.fromJson(Map<String, dynamic> json) = _$AssetImpl.fromJson;

  @override
  String get path;
  @override
  List<String>? get flavors;
  @override
  List<Transformer>? get transformers;
  @override
  @JsonKey(ignore: true)
  _$$AssetImplCopyWith<_$AssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transformer _$TransformerFromJson(Map<String, dynamic> json) {
  return _Transformer.fromJson(json);
}

/// @nodoc
mixin _$Transformer {
  String get package => throw _privateConstructorUsedError;
  List<String>? get args => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransformerCopyWith<Transformer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransformerCopyWith<$Res> {
  factory $TransformerCopyWith(
          Transformer value, $Res Function(Transformer) then) =
      _$TransformerCopyWithImpl<$Res, Transformer>;
  @useResult
  $Res call({String package, List<String>? args});
}

/// @nodoc
class _$TransformerCopyWithImpl<$Res, $Val extends Transformer>
    implements $TransformerCopyWith<$Res> {
  _$TransformerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? args = freezed,
  }) {
    return _then(_value.copyWith(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      args: freezed == args
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransformerImplCopyWith<$Res>
    implements $TransformerCopyWith<$Res> {
  factory _$$TransformerImplCopyWith(
          _$TransformerImpl value, $Res Function(_$TransformerImpl) then) =
      __$$TransformerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String package, List<String>? args});
}

/// @nodoc
class __$$TransformerImplCopyWithImpl<$Res>
    extends _$TransformerCopyWithImpl<$Res, _$TransformerImpl>
    implements _$$TransformerImplCopyWith<$Res> {
  __$$TransformerImplCopyWithImpl(
      _$TransformerImpl _value, $Res Function(_$TransformerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = null,
    Object? args = freezed,
  }) {
    return _then(_$TransformerImpl(
      package: null == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as String,
      args: freezed == args
          ? _value._args
          : args // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransformerImpl implements _Transformer {
  const _$TransformerImpl({required this.package, final List<String>? args})
      : _args = args;

  factory _$TransformerImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransformerImplFromJson(json);

  @override
  final String package;
  final List<String>? _args;
  @override
  List<String>? get args {
    final value = _args;
    if (value == null) return null;
    if (_args is EqualUnmodifiableListView) return _args;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Transformer(package: $package, args: $args)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransformerImpl &&
            (identical(other.package, package) || other.package == package) &&
            const DeepCollectionEquality().equals(other._args, _args));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, package, const DeepCollectionEquality().hash(_args));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransformerImplCopyWith<_$TransformerImpl> get copyWith =>
      __$$TransformerImplCopyWithImpl<_$TransformerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransformerImplToJson(
      this,
    );
  }
}

abstract class _Transformer implements Transformer {
  const factory _Transformer(
      {required final String package,
      final List<String>? args}) = _$TransformerImpl;

  factory _Transformer.fromJson(Map<String, dynamic> json) =
      _$TransformerImpl.fromJson;

  @override
  String get package;
  @override
  List<String>? get args;
  @override
  @JsonKey(ignore: true)
  _$$TransformerImplCopyWith<_$TransformerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Font _$FontFromJson(Map<String, dynamic> json) {
  return _Font.fromJson(json);
}

/// @nodoc
mixin _$Font {
  String get family => throw _privateConstructorUsedError;
  List<FontDetail> get fonts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FontCopyWith<Font> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontCopyWith<$Res> {
  factory $FontCopyWith(Font value, $Res Function(Font) then) =
      _$FontCopyWithImpl<$Res, Font>;
  @useResult
  $Res call({String family, List<FontDetail> fonts});
}

/// @nodoc
class _$FontCopyWithImpl<$Res, $Val extends Font>
    implements $FontCopyWith<$Res> {
  _$FontCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? fonts = null,
  }) {
    return _then(_value.copyWith(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      fonts: null == fonts
          ? _value.fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as List<FontDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FontImplCopyWith<$Res> implements $FontCopyWith<$Res> {
  factory _$$FontImplCopyWith(
          _$FontImpl value, $Res Function(_$FontImpl) then) =
      __$$FontImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String family, List<FontDetail> fonts});
}

/// @nodoc
class __$$FontImplCopyWithImpl<$Res>
    extends _$FontCopyWithImpl<$Res, _$FontImpl>
    implements _$$FontImplCopyWith<$Res> {
  __$$FontImplCopyWithImpl(_$FontImpl _value, $Res Function(_$FontImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? fonts = null,
  }) {
    return _then(_$FontImpl(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      fonts: null == fonts
          ? _value._fonts
          : fonts // ignore: cast_nullable_to_non_nullable
              as List<FontDetail>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FontImpl implements _Font {
  const _$FontImpl(
      {required this.family, required final List<FontDetail> fonts})
      : _fonts = fonts;

  factory _$FontImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontImplFromJson(json);

  @override
  final String family;
  final List<FontDetail> _fonts;
  @override
  List<FontDetail> get fonts {
    if (_fonts is EqualUnmodifiableListView) return _fonts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fonts);
  }

  @override
  String toString() {
    return 'Font(family: $family, fonts: $fonts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontImpl &&
            (identical(other.family, family) || other.family == family) &&
            const DeepCollectionEquality().equals(other._fonts, _fonts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, family, const DeepCollectionEquality().hash(_fonts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontImplCopyWith<_$FontImpl> get copyWith =>
      __$$FontImplCopyWithImpl<_$FontImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontImplToJson(
      this,
    );
  }
}

abstract class _Font implements Font {
  const factory _Font(
      {required final String family,
      required final List<FontDetail> fonts}) = _$FontImpl;

  factory _Font.fromJson(Map<String, dynamic> json) = _$FontImpl.fromJson;

  @override
  String get family;
  @override
  List<FontDetail> get fonts;
  @override
  @JsonKey(ignore: true)
  _$$FontImplCopyWith<_$FontImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FontDetail _$FontDetailFromJson(Map<String, dynamic> json) {
  return _FontDetail.fromJson(json);
}

/// @nodoc
mixin _$FontDetail {
  String get asset => throw _privateConstructorUsedError;
  String? get style => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FontDetailCopyWith<FontDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FontDetailCopyWith<$Res> {
  factory $FontDetailCopyWith(
          FontDetail value, $Res Function(FontDetail) then) =
      _$FontDetailCopyWithImpl<$Res, FontDetail>;
  @useResult
  $Res call({String asset, String? style, int? weight});
}

/// @nodoc
class _$FontDetailCopyWithImpl<$Res, $Val extends FontDetail>
    implements $FontDetailCopyWith<$Res> {
  _$FontDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? style = freezed,
    Object? weight = freezed,
  }) {
    return _then(_value.copyWith(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FontDetailImplCopyWith<$Res>
    implements $FontDetailCopyWith<$Res> {
  factory _$$FontDetailImplCopyWith(
          _$FontDetailImpl value, $Res Function(_$FontDetailImpl) then) =
      __$$FontDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String asset, String? style, int? weight});
}

/// @nodoc
class __$$FontDetailImplCopyWithImpl<$Res>
    extends _$FontDetailCopyWithImpl<$Res, _$FontDetailImpl>
    implements _$$FontDetailImplCopyWith<$Res> {
  __$$FontDetailImplCopyWithImpl(
      _$FontDetailImpl _value, $Res Function(_$FontDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? style = freezed,
    Object? weight = freezed,
  }) {
    return _then(_$FontDetailImpl(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      style: freezed == style
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FontDetailImpl implements _FontDetail {
  const _$FontDetailImpl({required this.asset, this.style, this.weight});

  factory _$FontDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FontDetailImplFromJson(json);

  @override
  final String asset;
  @override
  final String? style;
  @override
  final int? weight;

  @override
  String toString() {
    return 'FontDetail(asset: $asset, style: $style, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FontDetailImpl &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, asset, style, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FontDetailImplCopyWith<_$FontDetailImpl> get copyWith =>
      __$$FontDetailImplCopyWithImpl<_$FontDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FontDetailImplToJson(
      this,
    );
  }
}

abstract class _FontDetail implements FontDetail {
  const factory _FontDetail(
      {required final String asset,
      final String? style,
      final int? weight}) = _$FontDetailImpl;

  factory _FontDetail.fromJson(Map<String, dynamic> json) =
      _$FontDetailImpl.fromJson;

  @override
  String get asset;
  @override
  String? get style;
  @override
  int? get weight;
  @override
  @JsonKey(ignore: true)
  _$$FontDetailImplCopyWith<_$FontDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
