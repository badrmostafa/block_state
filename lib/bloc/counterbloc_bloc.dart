import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

class CounterblocBloc extends Bloc<IncrementEvent, CounterState> {
  CounterblocBloc() : super(CounterState()) {
    on<IncrementEvent>((event, emit) {
      emit(CounterState(count: state.count + 1));
    });
  }
}
