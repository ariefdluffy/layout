import 'package:freezed_annotation/freezed_annotation.dart';
part 'pelatihan_state.freezed.dart';

@unfreezed
class PelatihanState with _$PelatihanState {
  factory PelatihanState({
    @Default(0) int counter,
  }) = _PelatihanState;
}
