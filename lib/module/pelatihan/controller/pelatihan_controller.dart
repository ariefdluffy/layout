import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/pelatihan_state.dart';
import 'package:layout/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class PelatihanController extends Cubit<PelatihanState> implements IBlocBase {
  PelatihanController() : super(PelatihanState());

  @override
  void initState() {
    //initState event
  }

  @override
  void dispose() {
    //dispose event
  }

  @override
  void ready() {
    //ready event
  }

  increment() {
    state.counter++;
    emit(state.copyWith());
  }
}
