// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pubspec_dependency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PubspecDependencyModel {
  String get name => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  /// Create a copy of PubspecDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubspecDependencyModelCopyWith<PubspecDependencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecDependencyModelCopyWith<$Res> {
  factory $PubspecDependencyModelCopyWith(PubspecDependencyModel value,
          $Res Function(PubspecDependencyModel) then) =
      _$PubspecDependencyModelCopyWithImpl<$Res, PubspecDependencyModel>;
  @useResult
  $Res call({String name, String version});
}

/// @nodoc
class _$PubspecDependencyModelCopyWithImpl<$Res,
        $Val extends PubspecDependencyModel>
    implements $PubspecDependencyModelCopyWith<$Res> {
  _$PubspecDependencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubspecDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubspecDependencyModelImplCopyWith<$Res>
    implements $PubspecDependencyModelCopyWith<$Res> {
  factory _$$PubspecDependencyModelImplCopyWith(
          _$PubspecDependencyModelImpl value,
          $Res Function(_$PubspecDependencyModelImpl) then) =
      __$$PubspecDependencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String version});
}

/// @nodoc
class __$$PubspecDependencyModelImplCopyWithImpl<$Res>
    extends _$PubspecDependencyModelCopyWithImpl<$Res,
        _$PubspecDependencyModelImpl>
    implements _$$PubspecDependencyModelImplCopyWith<$Res> {
  __$$PubspecDependencyModelImplCopyWithImpl(
      _$PubspecDependencyModelImpl _value,
      $Res Function(_$PubspecDependencyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubspecDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? version = null,
  }) {
    return _then(_$PubspecDependencyModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PubspecDependencyModelImpl extends _PubspecDependencyModel {
  const _$PubspecDependencyModelImpl(
      {required this.name, required this.version})
      : super._();

  @override
  final String name;
  @override
  final String version;

  @override
  String toString() {
    return 'PubspecDependencyModel(name: $name, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubspecDependencyModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.version, version) || other.version == version));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, version);

  /// Create a copy of PubspecDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubspecDependencyModelImplCopyWith<_$PubspecDependencyModelImpl>
      get copyWith => __$$PubspecDependencyModelImplCopyWithImpl<
          _$PubspecDependencyModelImpl>(this, _$identity);
}

abstract class _PubspecDependencyModel extends PubspecDependencyModel {
  const factory _PubspecDependencyModel(
      {required final String name,
      required final String version}) = _$PubspecDependencyModelImpl;
  const _PubspecDependencyModel._() : super._();

  @override
  String get name;
  @override
  String get version;

  /// Create a copy of PubspecDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubspecDependencyModelImplCopyWith<_$PubspecDependencyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
