// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PubspecYamlState {
  Result<PubspecYamlModel> get pubspecYaml =>
      throw _privateConstructorUsedError;

  /// Create a copy of PubspecYamlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PubspecYamlStateCopyWith<PubspecYamlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PubspecYamlStateCopyWith<$Res> {
  factory $PubspecYamlStateCopyWith(
          PubspecYamlState value, $Res Function(PubspecYamlState) then) =
      _$PubspecYamlStateCopyWithImpl<$Res, PubspecYamlState>;
  @useResult
  $Res call({Result<PubspecYamlModel> pubspecYaml});
}

/// @nodoc
class _$PubspecYamlStateCopyWithImpl<$Res, $Val extends PubspecYamlState>
    implements $PubspecYamlStateCopyWith<$Res> {
  _$PubspecYamlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PubspecYamlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubspecYaml = null,
  }) {
    return _then(_value.copyWith(
      pubspecYaml: null == pubspecYaml
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as Result<PubspecYamlModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PubspecYamlStateImplCopyWith<$Res>
    implements $PubspecYamlStateCopyWith<$Res> {
  factory _$$PubspecYamlStateImplCopyWith(_$PubspecYamlStateImpl value,
          $Res Function(_$PubspecYamlStateImpl) then) =
      __$$PubspecYamlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result<PubspecYamlModel> pubspecYaml});
}

/// @nodoc
class __$$PubspecYamlStateImplCopyWithImpl<$Res>
    extends _$PubspecYamlStateCopyWithImpl<$Res, _$PubspecYamlStateImpl>
    implements _$$PubspecYamlStateImplCopyWith<$Res> {
  __$$PubspecYamlStateImplCopyWithImpl(_$PubspecYamlStateImpl _value,
      $Res Function(_$PubspecYamlStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PubspecYamlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pubspecYaml = null,
  }) {
    return _then(_$PubspecYamlStateImpl(
      pubspecYaml: null == pubspecYaml
          ? _value.pubspecYaml
          : pubspecYaml // ignore: cast_nullable_to_non_nullable
              as Result<PubspecYamlModel>,
    ));
  }
}

/// @nodoc

class _$PubspecYamlStateImpl extends _PubspecYamlState {
  const _$PubspecYamlStateImpl({required this.pubspecYaml}) : super._();

  @override
  final Result<PubspecYamlModel> pubspecYaml;

  @override
  String toString() {
    return 'PubspecYamlState(pubspecYaml: $pubspecYaml)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PubspecYamlStateImpl &&
            (identical(other.pubspecYaml, pubspecYaml) ||
                other.pubspecYaml == pubspecYaml));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pubspecYaml);

  /// Create a copy of PubspecYamlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PubspecYamlStateImplCopyWith<_$PubspecYamlStateImpl> get copyWith =>
      __$$PubspecYamlStateImplCopyWithImpl<_$PubspecYamlStateImpl>(
          this, _$identity);
}

abstract class _PubspecYamlState extends PubspecYamlState {
  const factory _PubspecYamlState(
          {required final Result<PubspecYamlModel> pubspecYaml}) =
      _$PubspecYamlStateImpl;
  const _PubspecYamlState._() : super._();

  @override
  Result<PubspecYamlModel> get pubspecYaml;

  /// Create a copy of PubspecYamlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PubspecYamlStateImplCopyWith<_$PubspecYamlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
