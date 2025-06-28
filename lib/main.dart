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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 183, 106, 58),
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page 1'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const Text('Flex & Expanded Example', style: TextStyle(fontSize: 20)),

          // FLEX BOX EXAMPLE
          // const SizedBox(height: 20),

          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: const Center(child: Text("1 Flex")),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Center(child: Text("6 Flex")),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.blue,
                  child: const Center(child: Text("1 Flex")),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
