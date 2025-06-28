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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding: EdgeInsets.all(1), 
                child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    width: 120,
                    height: 200,
                    color: Colors.lightGreen,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    width: 120,
                    height: 200,
                    color: const Color.fromARGB(255, 195, 100, 74),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    width: 120,
                    height: 200,
                    color: const Color.fromARGB(255, 74, 195, 179),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    width: 120,
                    height: 200,
                    color: const Color.fromARGB(255, 195, 74, 191),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 11),
                    width: 120,
                    height: 200,
                    color: const Color.fromARGB(255, 191, 195, 74),
                  ),
                ],
              )
              )),

              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: const Color.fromARGB(255, 195, 112, 74),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: const Color.fromARGB(255, 195, 175, 74),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: const Color.fromARGB(255, 151, 195, 74),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: const Color.fromARGB(255, 195, 74, 74),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 11),
                height: 200,
                color: const Color.fromARGB(255, 195, 74, 147),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
