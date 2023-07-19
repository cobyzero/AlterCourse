import 'package:alter_course/bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 200,
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<MessageBloc>().add(
                        AddMessageEvent(controller.text),
                      );
                },
                child: const Text("Enter")),
            BlocBuilder<MessageBloc, MessageState>(
              builder: (context, state) {
                return state.message.isEmpty ? const Text("No hay datos") : Text(state.message);
              },
            ),
          ],
        ),
      ),
    );
  }
}
