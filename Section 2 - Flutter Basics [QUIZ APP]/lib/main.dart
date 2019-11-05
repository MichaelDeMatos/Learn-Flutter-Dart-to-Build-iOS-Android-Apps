import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var indexPergunta = 0;
  void respondePergunta() {
    setState(() {
      indexPergunta += 1;
    });
    print(indexPergunta);
  }

  @override
  Widget build(BuildContext context) {
    var perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(perguntas[indexPergunta]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: respondePergunta,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () => print('Resposta 2'),
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: respondePergunta,
            ),
          ],
        ),
      ),
    );
  }
}
