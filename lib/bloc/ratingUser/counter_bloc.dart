import 'package:bloc/bloc.dart';
import 'package:tarea1/bloc/ratingUser/counter_event.dart';
import 'package:tarea1/bloc/ratingUser/counter_state.dart';

class CounterRating extends Bloc<CounterEvent, CounterState> {
  CounterRating() : super(CounterState(0, 0)) {
    on<CounterlikePressed>((event, emit) {
      emit(CounterState(state.likes + 1, state.dislikes));
    });

    on<CounterlikePressed>((event, emit) {
      emit(CounterState(state.likes, state.dislikes + 1));
    });
  }
}
