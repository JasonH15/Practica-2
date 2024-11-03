import 'package:flutter/material.dart';
import 'package:tarea1/view/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Practica 2',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Perfil Profesional'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(
            widget.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.all(60.0),
          child: Center(
            child: SizedBox(
              height: 600.0,
              child: Card(
                elevation: 10.0,
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  Head(),
                ]),
              ),
            ),
          ),
        ));
  }
}
