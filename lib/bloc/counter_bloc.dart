import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(startingValue: 20)) {
    on<ArttirCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter + 1));
    });
    on<AzaltCounterEvent>((event, emit) {
      emit(MyCounterState(counterValue: state.counter - 1));
    });
  }
}
