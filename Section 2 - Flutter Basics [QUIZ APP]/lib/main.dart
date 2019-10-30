import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Michael'),
          centerTitle: true,
        ),
        body: Text('Este é meu primeiro app!'),
      ),
    );
  }
}
