part of 'counter_bloc.dart';

abstract class CounterEvent {}

class IncrementEvent extends CounterEvent {}

class ClearEvent extends CounterEvent {}
