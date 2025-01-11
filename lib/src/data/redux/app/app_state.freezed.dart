// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppState {
  IpState get ipState => throw _privateConstructorUsedError;
  MyFormState get myFormState => throw _privateConstructorUsedError;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call({IpState ipState, MyFormState myFormState});

  $IpStateCopyWith<$Res> get ipState;
  $MyFormStateCopyWith<$Res> get myFormState;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipState = null,
    Object? myFormState = null,
  }) {
    return _then(_value.copyWith(
      ipState: null == ipState
          ? _value.ipState
          : ipState // ignore: cast_nullable_to_non_nullable
              as IpState,
      myFormState: null == myFormState
          ? _value.myFormState
          : myFormState // ignore: cast_nullable_to_non_nullable
              as MyFormState,
    ) as $Val);
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $IpStateCopyWith<$Res> get ipState {
    return $IpStateCopyWith<$Res>(_value.ipState, (value) {
      return _then(_value.copyWith(ipState: value) as $Val);
    });
  }

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MyFormStateCopyWith<$Res> get myFormState {
    return $MyFormStateCopyWith<$Res>(_value.myFormState, (value) {
      return _then(_value.copyWith(myFormState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({IpState ipState, MyFormState myFormState});

  @override
  $IpStateCopyWith<$Res> get ipState;
  @override
  $MyFormStateCopyWith<$Res> get myFormState;
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipState = null,
    Object? myFormState = null,
  }) {
    return _then(_$AppStateImpl(
      ipState: null == ipState
          ? _value.ipState
          : ipState // ignore: cast_nullable_to_non_nullable
              as IpState,
      myFormState: null == myFormState
          ? _value.myFormState
          : myFormState // ignore: cast_nullable_to_non_nullable
              as MyFormState,
    ));
  }
}

/// @nodoc

class _$AppStateImpl extends _AppState {
  const _$AppStateImpl({required this.ipState, required this.myFormState})
      : super._();

  @override
  final IpState ipState;
  @override
  final MyFormState myFormState;

  @override
  String toString() {
    return 'AppState(ipState: $ipState, myFormState: $myFormState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.ipState, ipState) || other.ipState == ipState) &&
            (identical(other.myFormState, myFormState) ||
                other.myFormState == myFormState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipState, myFormState);

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {required final IpState ipState,
      required final MyFormState myFormState}) = _$AppStateImpl;
  const _AppState._() : super._();

  @override
  IpState get ipState;
  @override
  MyFormState get myFormState;

  /// Create a copy of AppState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
