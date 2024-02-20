abstract class HomeState {}

class InitialState extends HomeState {}

class UpdatedState extends HomeState {
  final int selectedIndex;

  UpdatedState(this.selectedIndex);
}