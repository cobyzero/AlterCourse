part of 'counter_bloc.dart';

abstract class CounterState {}

class LoadingCounter extends CounterState {}

class CorrectoCounter extends CounterState {
  final UserEntity user;
  CorrectoCounter(this.user);
}
