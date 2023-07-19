import 'package:alter_course/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const MaterialApp(
        title: 'Contador Bloc App',
        home: CounterPage(),
      ),
    );
  }
}

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contador Bloc')),
      body: Center(
        child: BlocListener<CounterBloc, CounterState>(
          listener: (context, state) {
            if (state is CorrectoCounter) {
              print("CARGO");
            }
          },
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    context.read<CounterBloc>().add(ClearEvent());
                  },
                  child: Text("BORRAR")),
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  switch (state) {
                    case LoadingCounter():
                      return const CircularProgressIndicator();
                    case CorrectoCounter():
                      return Text(state.count);
                    default:
                      return const Text("Error");
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Emitir el evento para incrementar el contador
          context.read<CounterBloc>().add(IncrementEvent());
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
