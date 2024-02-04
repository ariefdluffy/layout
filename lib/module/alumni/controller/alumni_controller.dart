import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/alumni_state.dart';
import 'package:layout/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class AlumniController extends Cubit<AlumniState> implements IBlocBase {
  AlumniController() : super(AlumniState());

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
