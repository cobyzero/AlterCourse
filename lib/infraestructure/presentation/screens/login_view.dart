import 'package:alter_course/application/bloc/login/login_bloc.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/custom_windows.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/render_button.dart';
import 'package:alter_course/infraestructure/presentation/screens/widgets/render_input.dart';
import 'package:alter_course/util/colors_util.dart';
import 'package:alter_course/util/navigator_util.dart';
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
        color: bgColor,
        appbar: AppBar(
          title: const Text("Alter Course"),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state is LoginLoadingState) {
              NavigatorUtil.onLoading(context);
            }
            if (state is LoginCompleteState) {
              NavigatorUtil.onComplete(context);
              context.go("/home");
            }
          },
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 170,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  /**
                   * ? Title
                   */
                  const Text(
                    "Welcome back! Glad to see you, Again!",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  /**
                   * ? INPUT EMAIL
                   */
                  RenderInput(
                    controller: emailController,
                    title: "Email",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  /**
                   * ? INPUT PASSWORD
                   */
                  RenderInput(
                    controller: passwordController,
                    title: "Password",
                  ),
                  /**
                   * ? RECOVERY PASSWORD
                   */
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  /**
                   * ? LOGIN BUTTON
                   */
                  RenderButton(
                    onPressed: () => loginBloc.add(LoginClickEvent()),
                    text: "Login",
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
