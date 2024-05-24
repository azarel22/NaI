import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 105, 220, 255)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'aqui no va el nombre'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
          'Azarel Emmanuel Sanchez Camacho',
          style: TextStyle(fontSize: 24, color: Colors.black),
        ),
          ),
          Center(
            child: SizedBox(
              height: 500.0,
              width: 700.0,
              child: Image.network('https://png.pngtree.com/background/20230524/original/pngtree-sad-pictures-for-desktop-hd-backgrounds-picture-image_2705986.jpg'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}