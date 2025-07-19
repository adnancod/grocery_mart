part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class NavigationIndexChange extends HomeEvent {
  final int index;
  const NavigationIndexChange(this.index);

  @override
  List<Object> get props => [index];
}

