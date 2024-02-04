// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alumni_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlumniState {
  int get counter => throw _privateConstructorUsedError;
  set counter(int value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlumniStateCopyWith<AlumniState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlumniStateCopyWith<$Res> {
  factory $AlumniStateCopyWith(
          AlumniState value, $Res Function(AlumniState) then) =
      _$AlumniStateCopyWithImpl<$Res, AlumniState>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$AlumniStateCopyWithImpl<$Res, $Val extends AlumniState>
    implements $AlumniStateCopyWith<$Res> {
  _$AlumniStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AlumniStateImplCopyWith<$Res>
    implements $AlumniStateCopyWith<$Res> {
  factory _$$AlumniStateImplCopyWith(
          _$AlumniStateImpl value, $Res Function(_$AlumniStateImpl) then) =
      __$$AlumniStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$AlumniStateImplCopyWithImpl<$Res>
    extends _$AlumniStateCopyWithImpl<$Res, _$AlumniStateImpl>
    implements _$$AlumniStateImplCopyWith<$Res> {
  __$$AlumniStateImplCopyWithImpl(
      _$AlumniStateImpl _value, $Res Function(_$AlumniStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$AlumniStateImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AlumniStateImpl implements _AlumniState {
  _$AlumniStateImpl({this.counter = 0});

  @override
  @JsonKey()
  int counter;

  @override
  String toString() {
    return 'AlumniState(counter: $counter)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlumniStateImplCopyWith<_$AlumniStateImpl> get copyWith =>
      __$$AlumniStateImplCopyWithImpl<_$AlumniStateImpl>(this, _$identity);
}

abstract class _AlumniState implements AlumniState {
  factory _AlumniState({int counter}) = _$AlumniStateImpl;

  @override
  int get counter;
  set counter(int value);
  @override
  @JsonKey(ignore: true)
  _$$AlumniStateImplCopyWith<_$AlumniStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
