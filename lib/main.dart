import 'package:flutter/material.dart';
import 'package:fcode_design_system/fcode_design_system.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final fCodeTheme = FCodeTheme();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: fCodeTheme.lightTheme,
      darkTheme: fCodeTheme.darkTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextComponent(
                value: HardCodedTextComponentValue(
                    'You have pushed the button this many times:',
                    ignoreLog: true)),
            TextComponent(value: NumberTextComponentValue(_counter)),
          ],
        ),
      ),
      floatingActionButton: IconButtonComponent(
        icon: Icons.add_rounded,
        onPressed: _incrementCounter,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
