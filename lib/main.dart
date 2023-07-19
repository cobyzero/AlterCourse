import 'package:alter_course/bloc/message_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
        create: (context) => MessageBloc(),
      )
    ], child: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
          ),
          body: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<MessageBloc>().add(AddMessageEvent());
                  },
                  child: const Text("Enter")),
              BlocBuilder<MessageBloc, MessageState>(
                builder: (context, state) {
                  return state.message.isEmpty ? const Text("No hay datos") : Text(state.message);
                },
              ),
            ],
          )),
    );
  }
}
