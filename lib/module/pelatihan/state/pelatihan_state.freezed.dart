// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pelatihan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PelatihanState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PelatihanStateCopyWith<PelatihanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PelatihanStateCopyWith<$Res> {
  factory $PelatihanStateCopyWith(
          PelatihanState value, $Res Function(PelatihanState) then) =
      _$PelatihanStateCopyWithImpl<$Res, PelatihanState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$PelatihanStateCopyWithImpl<$Res, $Val extends PelatihanState>
    implements $PelatihanStateCopyWith<$Res> {
  _$PelatihanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PelatihanStateImplCopyWith<$Res>
    implements $PelatihanStateCopyWith<$Res> {
  factory _$$PelatihanStateImplCopyWith(_$PelatihanStateImpl value,
          $Res Function(_$PelatihanStateImpl) then) =
      __$$PelatihanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$PelatihanStateImplCopyWithImpl<$Res>
    extends _$PelatihanStateCopyWithImpl<$Res, _$PelatihanStateImpl>
    implements _$$PelatihanStateImplCopyWith<$Res> {
  __$$PelatihanStateImplCopyWithImpl(
      _$PelatihanStateImpl _value, $Res Function(_$PelatihanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$PelatihanStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PelatihanStateImpl implements _PelatihanState {
  _$PelatihanStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'PelatihanState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PelatihanStateImplCopyWith<_$PelatihanStateImpl> get copyWith =>
      __$$PelatihanStateImplCopyWithImpl<_$PelatihanStateImpl>(
          this, _$identity);
}

abstract class _PelatihanState implements PelatihanState {
  factory _PelatihanState({int counter}) = _$PelatihanStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$PelatihanStateImplCopyWith<_$PelatihanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
