import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginClickEvent>((event, emit) async {
      emit(LoginLoadingState());

      await Future.delayed(const Duration(seconds: 3));

      emit(LoginCompleteState());
    });
  }
}
