// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'velvet_yaml_resource.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VelvetYamlResource _$VelvetYamlResourceFromJson(Map<String, dynamic> json) {
  return _VelvetYamlResource.fromJson(json);
}

/// @nodoc
mixin _$VelvetYamlResource {
  @JsonKey(name: 'type')
  VelvetConfigType get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'providers')
  List<ProviderResource> get providers => throw _privateConstructorUsedError;
  @JsonKey(name: 'configs')
  List<ConfigResource> get configs => throw _privateConstructorUsedError;
  @JsonKey(name: 'commands')
  List<CommandResource> get commands => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VelvetYamlResourceCopyWith<VelvetYamlResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VelvetYamlResourceCopyWith<$Res> {
  factory $VelvetYamlResourceCopyWith(
          VelvetYamlResource value, $Res Function(VelvetYamlResource) then) =
      _$VelvetYamlResourceCopyWithImpl<$Res, VelvetYamlResource>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') VelvetConfigType type,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'providers') List<ProviderResource> providers,
      @JsonKey(name: 'configs') List<ConfigResource> configs,
      @JsonKey(name: 'commands') List<CommandResource> commands});
}

/// @nodoc
class _$VelvetYamlResourceCopyWithImpl<$Res, $Val extends VelvetYamlResource>
    implements $VelvetYamlResourceCopyWith<$Res> {
  _$VelvetYamlResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? providers = null,
    Object? configs = null,
    Object? commands = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VelvetConfigType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      providers: null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<ProviderResource>,
      configs: null == configs
          ? _value.configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<ConfigResource>,
      commands: null == commands
          ? _value.commands
          : commands // ignore: cast_nullable_to_non_nullable
              as List<CommandResource>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VelvetYamlResourceImplCopyWith<$Res>
    implements $VelvetYamlResourceCopyWith<$Res> {
  factory _$$VelvetYamlResourceImplCopyWith(_$VelvetYamlResourceImpl value,
          $Res Function(_$VelvetYamlResourceImpl) then) =
      __$$VelvetYamlResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') VelvetConfigType type,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'providers') List<ProviderResource> providers,
      @JsonKey(name: 'configs') List<ConfigResource> configs,
      @JsonKey(name: 'commands') List<CommandResource> commands});
}

/// @nodoc
class __$$VelvetYamlResourceImplCopyWithImpl<$Res>
    extends _$VelvetYamlResourceCopyWithImpl<$Res, _$VelvetYamlResourceImpl>
    implements _$$VelvetYamlResourceImplCopyWith<$Res> {
  __$$VelvetYamlResourceImplCopyWithImpl(_$VelvetYamlResourceImpl _value,
      $Res Function(_$VelvetYamlResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? name = null,
    Object? providers = null,
    Object? configs = null,
    Object? commands = null,
  }) {
    return _then(_$VelvetYamlResourceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as VelvetConfigType,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      providers: null == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<ProviderResource>,
      configs: null == configs
          ? _value._configs
          : configs // ignore: cast_nullable_to_non_nullable
              as List<ConfigResource>,
      commands: null == commands
          ? _value._commands
          : commands // ignore: cast_nullable_to_non_nullable
              as List<CommandResource>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VelvetYamlResourceImpl implements _VelvetYamlResource {
  const _$VelvetYamlResourceImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'providers')
      required final List<ProviderResource> providers,
      @JsonKey(name: 'configs') required final List<ConfigResource> configs,
      @JsonKey(name: 'commands') required final List<CommandResource> commands})
      : _providers = providers,
        _configs = configs,
        _commands = commands;

  factory _$VelvetYamlResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$VelvetYamlResourceImplFromJson(json);

  @override
  @JsonKey(name: 'type')
  final VelvetConfigType type;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<ProviderResource> _providers;
  @override
  @JsonKey(name: 'providers')
  List<ProviderResource> get providers {
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  final List<ConfigResource> _configs;
  @override
  @JsonKey(name: 'configs')
  List<ConfigResource> get configs {
    if (_configs is EqualUnmodifiableListView) return _configs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_configs);
  }

  final List<CommandResource> _commands;
  @override
  @JsonKey(name: 'commands')
  List<CommandResource> get commands {
    if (_commands is EqualUnmodifiableListView) return _commands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commands);
  }

  @override
  String toString() {
    return 'VelvetYamlResource(type: $type, name: $name, providers: $providers, configs: $configs, commands: $commands)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VelvetYamlResourceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers) &&
            const DeepCollectionEquality().equals(other._configs, _configs) &&
            const DeepCollectionEquality().equals(other._commands, _commands));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      name,
      const DeepCollectionEquality().hash(_providers),
      const DeepCollectionEquality().hash(_configs),
      const DeepCollectionEquality().hash(_commands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VelvetYamlResourceImplCopyWith<_$VelvetYamlResourceImpl> get copyWith =>
      __$$VelvetYamlResourceImplCopyWithImpl<_$VelvetYamlResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VelvetYamlResourceImplToJson(
      this,
    );
  }
}

abstract class _VelvetYamlResource implements VelvetYamlResource {
  const factory _VelvetYamlResource(
          {@JsonKey(name: 'type') required final VelvetConfigType type,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'providers')
          required final List<ProviderResource> providers,
          @JsonKey(name: 'configs') required final List<ConfigResource> configs,
          @JsonKey(name: 'commands')
          required final List<CommandResource> commands}) =
      _$VelvetYamlResourceImpl;

  factory _VelvetYamlResource.fromJson(Map<String, dynamic> json) =
      _$VelvetYamlResourceImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  VelvetConfigType get type;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'providers')
  List<ProviderResource> get providers;
  @override
  @JsonKey(name: 'configs')
  List<ConfigResource> get configs;
  @override
  @JsonKey(name: 'commands')
  List<CommandResource> get commands;
  @override
  @JsonKey(ignore: true)
  _$$VelvetYamlResourceImplCopyWith<_$VelvetYamlResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProviderResource _$ProviderResourceFromJson(Map<String, dynamic> json) {
  return _ProviderResource.fromJson(json);
}

/// @nodoc
mixin _$ProviderResource {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_path')
  String get relativePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProviderResourceCopyWith<ProviderResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderResourceCopyWith<$Res> {
  factory $ProviderResourceCopyWith(
          ProviderResource value, $Res Function(ProviderResource) then) =
      _$ProviderResourceCopyWithImpl<$Res, ProviderResource>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'relative_path') String relativePath});
}

/// @nodoc
class _$ProviderResourceCopyWithImpl<$Res, $Val extends ProviderResource>
    implements $ProviderResourceCopyWith<$Res> {
  _$ProviderResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? token = null,
    Object? relativePath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      relativePath: null == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderResourceImplCopyWith<$Res>
    implements $ProviderResourceCopyWith<$Res> {
  factory _$$ProviderResourceImplCopyWith(_$ProviderResourceImpl value,
          $Res Function(_$ProviderResourceImpl) then) =
      __$$ProviderResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'relative_path') String relativePath});
}

/// @nodoc
class __$$ProviderResourceImplCopyWithImpl<$Res>
    extends _$ProviderResourceCopyWithImpl<$Res, _$ProviderResourceImpl>
    implements _$$ProviderResourceImplCopyWith<$Res> {
  __$$ProviderResourceImplCopyWithImpl(_$ProviderResourceImpl _value,
      $Res Function(_$ProviderResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? token = null,
    Object? relativePath = null,
  }) {
    return _then(_$ProviderResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      relativePath: null == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderResourceImpl implements _ProviderResource {
  const _$ProviderResourceImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'relative_path') required this.relativePath});

  factory _$ProviderResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderResourceImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'relative_path')
  final String relativePath;

  @override
  String toString() {
    return 'ProviderResource(name: $name, token: $token, relativePath: $relativePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.relativePath, relativePath) ||
                other.relativePath == relativePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, token, relativePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderResourceImplCopyWith<_$ProviderResourceImpl> get copyWith =>
      __$$ProviderResourceImplCopyWithImpl<_$ProviderResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderResourceImplToJson(
      this,
    );
  }
}

abstract class _ProviderResource implements ProviderResource {
  const factory _ProviderResource(
          {@JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'relative_path') required final String relativePath}) =
      _$ProviderResourceImpl;

  factory _ProviderResource.fromJson(Map<String, dynamic> json) =
      _$ProviderResourceImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'relative_path')
  String get relativePath;
  @override
  @JsonKey(ignore: true)
  _$$ProviderResourceImplCopyWith<_$ProviderResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ConfigResource _$ConfigResourceFromJson(Map<String, dynamic> json) {
  return _ConfigResource.fromJson(json);
}

/// @nodoc
mixin _$ConfigResource {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'contract')
  ContractResource get contract => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_as')
  CreateAsResource get createAs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigResourceCopyWith<ConfigResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigResourceCopyWith<$Res> {
  factory $ConfigResourceCopyWith(
          ConfigResource value, $Res Function(ConfigResource) then) =
      _$ConfigResourceCopyWithImpl<$Res, ConfigResource>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'contract') ContractResource contract,
      @JsonKey(name: 'create_as') CreateAsResource createAs});

  $ContractResourceCopyWith<$Res> get contract;
  $CreateAsResourceCopyWith<$Res> get createAs;
}

/// @nodoc
class _$ConfigResourceCopyWithImpl<$Res, $Val extends ConfigResource>
    implements $ConfigResourceCopyWith<$Res> {
  _$ConfigResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contract = null,
    Object? createAs = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractResource,
      createAs: null == createAs
          ? _value.createAs
          : createAs // ignore: cast_nullable_to_non_nullable
              as CreateAsResource,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContractResourceCopyWith<$Res> get contract {
    return $ContractResourceCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateAsResourceCopyWith<$Res> get createAs {
    return $CreateAsResourceCopyWith<$Res>(_value.createAs, (value) {
      return _then(_value.copyWith(createAs: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConfigResourceImplCopyWith<$Res>
    implements $ConfigResourceCopyWith<$Res> {
  factory _$$ConfigResourceImplCopyWith(_$ConfigResourceImpl value,
          $Res Function(_$ConfigResourceImpl) then) =
      __$$ConfigResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String name,
      @JsonKey(name: 'contract') ContractResource contract,
      @JsonKey(name: 'create_as') CreateAsResource createAs});

  @override
  $ContractResourceCopyWith<$Res> get contract;
  @override
  $CreateAsResourceCopyWith<$Res> get createAs;
}

/// @nodoc
class __$$ConfigResourceImplCopyWithImpl<$Res>
    extends _$ConfigResourceCopyWithImpl<$Res, _$ConfigResourceImpl>
    implements _$$ConfigResourceImplCopyWith<$Res> {
  __$$ConfigResourceImplCopyWithImpl(
      _$ConfigResourceImpl _value, $Res Function(_$ConfigResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contract = null,
    Object? createAs = null,
  }) {
    return _then(_$ConfigResourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as ContractResource,
      createAs: null == createAs
          ? _value.createAs
          : createAs // ignore: cast_nullable_to_non_nullable
              as CreateAsResource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfigResourceImpl implements _ConfigResource {
  const _$ConfigResourceImpl(
      {@JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'contract') required this.contract,
      @JsonKey(name: 'create_as') required this.createAs});

  factory _$ConfigResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfigResourceImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'contract')
  final ContractResource contract;
  @override
  @JsonKey(name: 'create_as')
  final CreateAsResource createAs;

  @override
  String toString() {
    return 'ConfigResource(name: $name, contract: $contract, createAs: $createAs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigResourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.createAs, createAs) ||
                other.createAs == createAs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, contract, createAs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigResourceImplCopyWith<_$ConfigResourceImpl> get copyWith =>
      __$$ConfigResourceImplCopyWithImpl<_$ConfigResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfigResourceImplToJson(
      this,
    );
  }
}

abstract class _ConfigResource implements ConfigResource {
  const factory _ConfigResource(
      {@JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'contract') required final ContractResource contract,
      @JsonKey(name: 'create_as')
      required final CreateAsResource createAs}) = _$ConfigResourceImpl;

  factory _ConfigResource.fromJson(Map<String, dynamic> json) =
      _$ConfigResourceImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'contract')
  ContractResource get contract;
  @override
  @JsonKey(name: 'create_as')
  CreateAsResource get createAs;
  @override
  @JsonKey(ignore: true)
  _$$ConfigResourceImplCopyWith<_$ConfigResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContractResource _$ContractResourceFromJson(Map<String, dynamic> json) {
  return _ContractResource.fromJson(json);
}

/// @nodoc
mixin _$ContractResource {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'relative_path')
  String get relativePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractResourceCopyWith<ContractResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractResourceCopyWith<$Res> {
  factory $ContractResourceCopyWith(
          ContractResource value, $Res Function(ContractResource) then) =
      _$ContractResourceCopyWithImpl<$Res, ContractResource>;
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'relative_path') String relativePath});
}

/// @nodoc
class _$ContractResourceCopyWithImpl<$Res, $Val extends ContractResource>
    implements $ContractResourceCopyWith<$Res> {
  _$ContractResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? relativePath = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      relativePath: null == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContractResourceImplCopyWith<$Res>
    implements $ContractResourceCopyWith<$Res> {
  factory _$$ContractResourceImplCopyWith(_$ContractResourceImpl value,
          $Res Function(_$ContractResourceImpl) then) =
      __$$ContractResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'token') String token,
      @JsonKey(name: 'relative_path') String relativePath});
}

/// @nodoc
class __$$ContractResourceImplCopyWithImpl<$Res>
    extends _$ContractResourceCopyWithImpl<$Res, _$ContractResourceImpl>
    implements _$$ContractResourceImplCopyWith<$Res> {
  __$$ContractResourceImplCopyWithImpl(_$ContractResourceImpl _value,
      $Res Function(_$ContractResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? relativePath = null,
  }) {
    return _then(_$ContractResourceImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      relativePath: null == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractResourceImpl implements _ContractResource {
  const _$ContractResourceImpl(
      {@JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'relative_path') required this.relativePath});

  factory _$ContractResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContractResourceImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'relative_path')
  final String relativePath;

  @override
  String toString() {
    return 'ContractResource(token: $token, relativePath: $relativePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContractResourceImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.relativePath, relativePath) ||
                other.relativePath == relativePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, relativePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContractResourceImplCopyWith<_$ContractResourceImpl> get copyWith =>
      __$$ContractResourceImplCopyWithImpl<_$ContractResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractResourceImplToJson(
      this,
    );
  }
}

abstract class _ContractResource implements ContractResource {
  const factory _ContractResource(
          {@JsonKey(name: 'token') required final String token,
          @JsonKey(name: 'relative_path') required final String relativePath}) =
      _$ContractResourceImpl;

  factory _ContractResource.fromJson(Map<String, dynamic> json) =
      _$ContractResourceImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'relative_path')
  String get relativePath;
  @override
  @JsonKey(ignore: true)
  _$$ContractResourceImplCopyWith<_$ContractResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateAsResource _$CreateAsResourceFromJson(Map<String, dynamic> json) {
  return _CreateAsResource.fromJson(json);
}

/// @nodoc
mixin _$CreateAsResource {
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAsResourceCopyWith<CreateAsResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAsResourceCopyWith<$Res> {
  factory $CreateAsResourceCopyWith(
          CreateAsResource value, $Res Function(CreateAsResource) then) =
      _$CreateAsResourceCopyWithImpl<$Res, CreateAsResource>;
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class _$CreateAsResourceCopyWithImpl<$Res, $Val extends CreateAsResource>
    implements $CreateAsResourceCopyWith<$Res> {
  _$CreateAsResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateAsResourceImplCopyWith<$Res>
    implements $CreateAsResourceCopyWith<$Res> {
  factory _$$CreateAsResourceImplCopyWith(_$CreateAsResourceImpl value,
          $Res Function(_$CreateAsResourceImpl) then) =
      __$$CreateAsResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'token') String token});
}

/// @nodoc
class __$$CreateAsResourceImplCopyWithImpl<$Res>
    extends _$CreateAsResourceCopyWithImpl<$Res, _$CreateAsResourceImpl>
    implements _$$CreateAsResourceImplCopyWith<$Res> {
  __$$CreateAsResourceImplCopyWithImpl(_$CreateAsResourceImpl _value,
      $Res Function(_$CreateAsResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$CreateAsResourceImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateAsResourceImpl implements _CreateAsResource {
  const _$CreateAsResourceImpl({@JsonKey(name: 'token') required this.token});

  factory _$CreateAsResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateAsResourceImplFromJson(json);

  @override
  @JsonKey(name: 'token')
  final String token;

  @override
  String toString() {
    return 'CreateAsResource(token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateAsResourceImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateAsResourceImplCopyWith<_$CreateAsResourceImpl> get copyWith =>
      __$$CreateAsResourceImplCopyWithImpl<_$CreateAsResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateAsResourceImplToJson(
      this,
    );
  }
}

abstract class _CreateAsResource implements CreateAsResource {
  const factory _CreateAsResource(
          {@JsonKey(name: 'token') required final String token}) =
      _$CreateAsResourceImpl;

  factory _CreateAsResource.fromJson(Map<String, dynamic> json) =
      _$CreateAsResourceImpl.fromJson;

  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$CreateAsResourceImplCopyWith<_$CreateAsResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommandResource _$CommandResourceFromJson(Map<String, dynamic> json) {
  return _CommandResource.fromJson(json);
}

/// @nodoc
mixin _$CommandResource {
  @JsonKey(name: 'relative_path')
  String get relativePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandResourceCopyWith<CommandResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandResourceCopyWith<$Res> {
  factory $CommandResourceCopyWith(
          CommandResource value, $Res Function(CommandResource) then) =
      _$CommandResourceCopyWithImpl<$Res, CommandResource>;
  @useResult
  $Res call({@JsonKey(name: 'relative_path') String relativePath});
}

/// @nodoc
class _$CommandResourceCopyWithImpl<$Res, $Val extends CommandResource>
    implements $CommandResourceCopyWith<$Res> {
  _$CommandResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativePath = null,
  }) {
    return _then(_value.copyWith(
      relativePath: null == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommandResourceImplCopyWith<$Res>
    implements $CommandResourceCopyWith<$Res> {
  factory _$$CommandResourceImplCopyWith(_$CommandResourceImpl value,
          $Res Function(_$CommandResourceImpl) then) =
      __$$CommandResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'relative_path') String relativePath});
}

/// @nodoc
class __$$CommandResourceImplCopyWithImpl<$Res>
    extends _$CommandResourceCopyWithImpl<$Res, _$CommandResourceImpl>
    implements _$$CommandResourceImplCopyWith<$Res> {
  __$$CommandResourceImplCopyWithImpl(
      _$CommandResourceImpl _value, $Res Function(_$CommandResourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relativePath = null,
  }) {
    return _then(_$CommandResourceImpl(
      relativePath: null == relativePath
          ? _value.relativePath
          : relativePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommandResourceImpl implements _CommandResource {
  const _$CommandResourceImpl(
      {@JsonKey(name: 'relative_path') required this.relativePath});

  factory _$CommandResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommandResourceImplFromJson(json);

  @override
  @JsonKey(name: 'relative_path')
  final String relativePath;

  @override
  String toString() {
    return 'CommandResource(relativePath: $relativePath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandResourceImpl &&
            (identical(other.relativePath, relativePath) ||
                other.relativePath == relativePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, relativePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandResourceImplCopyWith<_$CommandResourceImpl> get copyWith =>
      __$$CommandResourceImplCopyWithImpl<_$CommandResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommandResourceImplToJson(
      this,
    );
  }
}

abstract class _CommandResource implements CommandResource {
  const factory _CommandResource(
      {@JsonKey(name: 'relative_path')
      required final String relativePath}) = _$CommandResourceImpl;

  factory _CommandResource.fromJson(Map<String, dynamic> json) =
      _$CommandResourceImpl.fromJson;

  @override
  @JsonKey(name: 'relative_path')
  String get relativePath;
  @override
  @JsonKey(ignore: true)
  _$$CommandResourceImplCopyWith<_$CommandResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
