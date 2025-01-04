// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_config_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageConfigResource _$PackageConfigResourceFromJson(
    Map<String, dynamic> json) {
  return _PackageConfigResource.fromJson(json);
}

/// @nodoc
mixin _$PackageConfigResource {
  List<PackageConfigPackageResource> get packages =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageConfigResourceCopyWith<PackageConfigResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageConfigResourceCopyWith<$Res> {
  factory $PackageConfigResourceCopyWith(PackageConfigResource value,
          $Res Function(PackageConfigResource) then) =
      _$PackageConfigResourceCopyWithImpl<$Res, PackageConfigResource>;
  @useResult
  $Res call({List<PackageConfigPackageResource> packages});
}

/// @nodoc
class _$PackageConfigResourceCopyWithImpl<$Res,
        $Val extends PackageConfigResource>
    implements $PackageConfigResourceCopyWith<$Res> {
  _$PackageConfigResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_value.copyWith(
      packages: null == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageConfigPackageResource>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageConfigResourceImplCopyWith<$Res>
    implements $PackageConfigResourceCopyWith<$Res> {
  factory _$$PackageConfigResourceImplCopyWith(
          _$PackageConfigResourceImpl value,
          $Res Function(_$PackageConfigResourceImpl) then) =
      __$$PackageConfigResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<PackageConfigPackageResource> packages});
}

/// @nodoc
class __$$PackageConfigResourceImplCopyWithImpl<$Res>
    extends _$PackageConfigResourceCopyWithImpl<$Res,
        _$PackageConfigResourceImpl>
    implements _$$PackageConfigResourceImplCopyWith<$Res> {
  __$$PackageConfigResourceImplCopyWithImpl(_$PackageConfigResourceImpl _value,
      $Res Function(_$PackageConfigResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packages = null,
  }) {
    return _then(_$PackageConfigResourceImpl(
      packages: null == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageConfigPackageResource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageConfigResourceImpl implements _PackageConfigResource {
  const _$PackageConfigResourceImpl(
      {required final List<PackageConfigPackageResource> packages})
      : _packages = packages;

  factory _$PackageConfigResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageConfigResourceImplFromJson(json);

  final List<PackageConfigPackageResource> _packages;
  @override
  List<PackageConfigPackageResource> get packages {
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_packages);
  }

  @override
  String toString() {
    return 'PackageConfigResource(packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageConfigResourceImpl &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_packages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageConfigResourceImplCopyWith<_$PackageConfigResourceImpl>
      get copyWith => __$$PackageConfigResourceImplCopyWithImpl<
          _$PackageConfigResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageConfigResourceImplToJson(
      this,
    );
  }
}

abstract class _PackageConfigResource implements PackageConfigResource {
  const factory _PackageConfigResource(
          {required final List<PackageConfigPackageResource> packages}) =
      _$PackageConfigResourceImpl;

  factory _PackageConfigResource.fromJson(Map<String, dynamic> json) =
      _$PackageConfigResourceImpl.fromJson;

  @override
  List<PackageConfigPackageResource> get packages;
  @override
  @JsonKey(ignore: true)
  _$$PackageConfigResourceImplCopyWith<_$PackageConfigResourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackageConfigPackageResource _$PackageConfigPackageResourceFromJson(
    Map<String, dynamic> json) {
  return _PackageConfigPackageResource.fromJson(json);
}

/// @nodoc
mixin _$PackageConfigPackageResource {
  String get name => throw _privateConstructorUsedError;
  String get rootUri => throw _privateConstructorUsedError;
  String get packageUri => throw _privateConstructorUsedError;
  String get languageVersion => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageConfigPackageResourceCopyWith<PackageConfigPackageResource>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageConfigPackageResourceCopyWith<$Res> {
  factory $PackageConfigPackageResourceCopyWith(
          PackageConfigPackageResource value,
          $Res Function(PackageConfigPackageResource) then) =
      _$PackageConfigPackageResourceCopyWithImpl<$Res,
          PackageConfigPackageResource>;
  @useResult
  $Res call(
      {String name, String rootUri, String packageUri, String languageVersion});
}

/// @nodoc
class _$PackageConfigPackageResourceCopyWithImpl<$Res,
        $Val extends PackageConfigPackageResource>
    implements $PackageConfigPackageResourceCopyWith<$Res> {
  _$PackageConfigPackageResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rootUri = null,
    Object? packageUri = null,
    Object? languageVersion = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rootUri: null == rootUri
          ? _value.rootUri
          : rootUri // ignore: cast_nullable_to_non_nullable
              as String,
      packageUri: null == packageUri
          ? _value.packageUri
          : packageUri // ignore: cast_nullable_to_non_nullable
              as String,
      languageVersion: null == languageVersion
          ? _value.languageVersion
          : languageVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageConfigPackageResourceImplCopyWith<$Res>
    implements $PackageConfigPackageResourceCopyWith<$Res> {
  factory _$$PackageConfigPackageResourceImplCopyWith(
          _$PackageConfigPackageResourceImpl value,
          $Res Function(_$PackageConfigPackageResourceImpl) then) =
      __$$PackageConfigPackageResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String rootUri, String packageUri, String languageVersion});
}

/// @nodoc
class __$$PackageConfigPackageResourceImplCopyWithImpl<$Res>
    extends _$PackageConfigPackageResourceCopyWithImpl<$Res,
        _$PackageConfigPackageResourceImpl>
    implements _$$PackageConfigPackageResourceImplCopyWith<$Res> {
  __$$PackageConfigPackageResourceImplCopyWithImpl(
      _$PackageConfigPackageResourceImpl _value,
      $Res Function(_$PackageConfigPackageResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? rootUri = null,
    Object? packageUri = null,
    Object? languageVersion = null,
  }) {
    return _then(_$PackageConfigPackageResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rootUri: null == rootUri
          ? _value.rootUri
          : rootUri // ignore: cast_nullable_to_non_nullable
              as String,
      packageUri: null == packageUri
          ? _value.packageUri
          : packageUri // ignore: cast_nullable_to_non_nullable
              as String,
      languageVersion: null == languageVersion
          ? _value.languageVersion
          : languageVersion // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageConfigPackageResourceImpl
    implements _PackageConfigPackageResource {
  const _$PackageConfigPackageResourceImpl(
      {required this.name,
      required this.rootUri,
      required this.packageUri,
      required this.languageVersion});

  factory _$PackageConfigPackageResourceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PackageConfigPackageResourceImplFromJson(json);

  @override
  final String name;
  @override
  final String rootUri;
  @override
  final String packageUri;
  @override
  final String languageVersion;

  @override
  String toString() {
    return 'PackageConfigPackageResource(name: $name, rootUri: $rootUri, packageUri: $packageUri, languageVersion: $languageVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageConfigPackageResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rootUri, rootUri) || other.rootUri == rootUri) &&
            (identical(other.packageUri, packageUri) ||
                other.packageUri == packageUri) &&
            (identical(other.languageVersion, languageVersion) ||
                other.languageVersion == languageVersion));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, rootUri, packageUri, languageVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageConfigPackageResourceImplCopyWith<
          _$PackageConfigPackageResourceImpl>
      get copyWith => __$$PackageConfigPackageResourceImplCopyWithImpl<
          _$PackageConfigPackageResourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageConfigPackageResourceImplToJson(
      this,
    );
  }
}

abstract class _PackageConfigPackageResource
    implements PackageConfigPackageResource {
  const factory _PackageConfigPackageResource(
          {required final String name,
          required final String rootUri,
          required final String packageUri,
          required final String languageVersion}) =
      _$PackageConfigPackageResourceImpl;

  factory _PackageConfigPackageResource.fromJson(Map<String, dynamic> json) =
      _$PackageConfigPackageResourceImpl.fromJson;

  @override
  String get name;
  @override
  String get rootUri;
  @override
  String get packageUri;
  @override
  String get languageVersion;
  @override
  @JsonKey(ignore: true)
  _$$PackageConfigPackageResourceImplCopyWith<
          _$PackageConfigPackageResourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
