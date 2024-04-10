import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;

  void fetchImage() {
    counter++;
    final uri =
        Uri.parse('https://jsonplaceholder.typicode.com/photos/$counter');
    get(uri);
  }

  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: fetchImage,
        ),
        appBar: AppBar(
          title: const Text('AppBar Demo'),
        ),
      ),
      //home: Text('Hi there!'),
    );
  }
}
