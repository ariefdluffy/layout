import 'package:freezed_annotation/freezed_annotation.dart';
part 'dashboard_state.freezed.dart';

@unfreezed
class DashboardState with _$DashboardState {
  factory DashboardState({
    @Default(0) int currentIndex,
    @Default([
      {
        "id": 1,
        "photo":
            "https://ik.imagekit.io/4x8ncuvuzb/assets-img/img_3.jpg?updatedAt=1710059861691",
        "name_menu": "e-Learning BPSDM",
      },
      {
        "id": 2,
        "photo":
            "https://ik.imagekit.io/4x8ncuvuzb/assets-img/img_learn.jpg?updatedAt=1710059861600",
        "name_menu": "Tentang BPSDM",
      },
      {
        "id": 3,
        "photo":
            "https://ik.imagekit.io/4x8ncuvuzb/assets-img/img_2.jpg?updatedAt=1710059861286",
        "name_menu": "Berita BPSDM",
      },
      {
        "id": 4,
        "photo":
            "https://ik.imagekit.io/4x8ncuvuzb/assets-img/img_dis.jpg?updatedAt=1710059861207",
        "name_menu": "Registrasi Pelatihan",
      },
    ])
    List products,
  }) = _DashboardState;
}
