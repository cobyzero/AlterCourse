part of 'counter_bloc.dart';

abstract class CounterState {}

class LoadingCounter extends CounterState {}

class CorrectoCounter extends CounterState {
  final String count;

  CorrectoCounter(this.count);

  //   CounterState copyWith({int? count}) {
  //   return CounterState(count: count ?? this.count);
  // }
}
