import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(LoadingCounter()) {
    on<IncrementEvent>((event, emit) {
      emit(CorrectoCounter("TODO LISTO"));
    });

    on<ClearEvent>((event, emit) {
      emit(CorrectoCounter("vacio"));
    });
  }
}
