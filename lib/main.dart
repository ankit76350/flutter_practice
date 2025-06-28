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
      body: ListView.separated(

        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text("data $index"),
            subtitle: Text('Number'),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: 40, 
        separatorBuilder: (context,index){
          return Divider(height: 4, thickness: 2);
        }
      ),
    );
  }
}


