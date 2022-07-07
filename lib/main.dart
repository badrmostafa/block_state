import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counterbloc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CounterblocBloc(),
        child: const MaterialApp(home: Home()));
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Bloc')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterblocBloc>(context, listen: false)
                      .add(IncrementEvent());



















































                      
                },
                child: const Text('Increment')),
            const SizedBox(
              height: 15,
            ),
            BlocBuilder<CounterblocBloc, CounterState>(
                builder: (context, state) {
              return Text('${state.count}');
            })
          ],
        )));
  }
}
