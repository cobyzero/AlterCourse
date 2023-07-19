import 'package:alter_course/domain/entities/user_entity.dart';
import 'package:alter_course/infraestructure/presentation/user_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  final UserRepositoryImpl userRepositoryImpl;
  CounterBloc(this.userRepositoryImpl) : super(LoadingCounter()) {
    on<ClearEvent>((event, emit) async {
      final user = await userRepositoryImpl.getUsers();
      emit(CorrectoCounter(user));
    });
  }
}
