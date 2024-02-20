abstract class HomeEvent {}

class UpdateIndexEvent extends HomeEvent {
  final int selectedIndex;

  UpdateIndexEvent(this.selectedIndex);
}