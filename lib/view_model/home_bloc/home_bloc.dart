import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/product_model/product_model.dart';

part 'home_state.dart';
part 'home_event.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState()) {
    on<NavigationIndexChange>(_onNavigationIndexChanged);
  }

  void _onNavigationIndexChanged(
      NavigationIndexChange event, Emitter<HomeState> emit) {
    emit(state.copyWith(selectedIndex: event.index));
  }

}
