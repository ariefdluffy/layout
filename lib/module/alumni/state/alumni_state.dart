import 'package:freezed_annotation/freezed_annotation.dart';
part 'alumni_state.freezed.dart';

@unfreezed
class AlumniState with _$AlumniState {
  factory AlumniState({
    @Default(0) int counter,
  }) = _AlumniState;
}
