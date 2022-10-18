import 'package:flutter/material.dart';
import 'package:flutter_provider/person.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    StreamProvider<String>(
      create: (_) => Person(name: 'gusta', age: 20).umur,
      initialData: 25.toString(),
      catchError: (_, error) => error.toString(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyNamePage(),
    );
  }
}

class MyNamePage extends StatelessWidget {
  const MyNamePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Future Provider"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Consumer<String>(
            builder: (context, String umur, child) {
              return Column(
                children: <Widget>[
                  const Text(
                    "Watch gusta's age...",
                    style: TextStyle(fontSize: 20),
                  ),
                  const Text(
                    "Name: gusta",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Age: $umur",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              );
            },
          ),
        ),
      ),
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
