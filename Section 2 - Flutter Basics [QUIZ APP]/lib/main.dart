import 'package:flutter/material.dart';

import 'pergunta.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _indexPergunta = 0;
  void _respondePergunta() {
    setState(() {
      _indexPergunta += 1;
    });
    print(_indexPergunta);
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
            Pergunta(perguntas[_indexPergunta]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: _respondePergunta,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: () => print('Resposta 2'),
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: _respondePergunta,
            ),
          ],
        ),
      ),
    );
  }
}
