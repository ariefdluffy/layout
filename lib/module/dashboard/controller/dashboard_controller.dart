import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../state/dashboard_state.dart';
import 'package:layout/bloc_util.dart';
import 'package:injectable/injectable.dart';

@singleton
class DashboardController extends Cubit<DashboardState> implements IBlocBase {
  DashboardController() : super(DashboardState());
  final CarouselController carouselController = CarouselController();
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
}
