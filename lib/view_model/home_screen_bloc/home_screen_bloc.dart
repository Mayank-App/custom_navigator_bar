import 'package:bloc/bloc.dart';
import 'home_screen_event.dart';
import 'home_screen_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(InitialState()){
    on<UpdateIndexEvent>((event, emit){
      emit(UpdatedState(event.selectedIndex));
    });
  }
}