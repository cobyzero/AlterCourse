import 'package:alter_course/application/bloc/login/login_bloc.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/custom_windows.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/render_button.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/render_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var loginBloc = context.read<LoginBloc>();

    return CustomWindows(
        child: BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginLoadingState) {
          onLoading();
        }
        if (state is LoginCompleteState) {
          // Navigator.pop(context);
          // context.go("/home");
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          RenderInput(
            controller: emailController,
          ),
          const SizedBox(
            height: 20,
          ),
          RenderInput(
            controller: passwordController,
          ),
          RenderButton(
            onPressed: () => loginBloc.add(LoginClickEvent()),
            text: "Login",
          )
        ],
      ),
    ));
  }

  onLoading() {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Loading"),
              SizedBox(
                height: 20,
              ),
              LinearProgressIndicator(
                backgroundColor: Colors.white,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
