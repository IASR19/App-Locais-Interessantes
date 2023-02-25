import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locais Interessantes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'App Locais Interessantes'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  List locais = [
    "Belo Horizonte",
    "São Paulo",
    "Curitiba",
    "Rio de Janeiro",
    "Recife",
    "Sorocaba",
    "Santa Rita do Sapucaí",
    "Pouso Alegre"
  ];

  List<MaterialColor> cores = [
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.grey,
    Colors.red,
    Colors.pink,
    Colors.brown
  ];

  String randomTexto = "";
  MaterialColor randomCore = Colors.blue;

  void _atualizarTela() {
    setState(() {
      randomTexto = locais[new Random().nextInt(locais.length)];
      randomCore = cores [new Random().nextInt(cores.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: randomCore, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: _atualizarTela,

              child: Text('Clique!'),
            ),
            Text(
              '$randomTexto',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
