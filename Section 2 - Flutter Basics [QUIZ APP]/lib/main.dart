import 'package:flutter/material.dart';
import 'package:flutter_basics/pergunta.dart';
import 'package:flutter_basics/resposta.dart';

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
    // var perguntas = ['Qual sua cor favorita?', 'Qual seu animal favorito?'];
    var pergunta1 = new Map<String, Object>();
    pergunta1['textoPergunta'] = 'Qual sua cor favorita?';
    pergunta1['respostas'] = ['Azul', 'Vermelho', 'Amarelo'];

    var pergunta2 = new Map<String, Object>();
    pergunta2['textoPergunta'] = 'Qual seu animal favorito?';
    pergunta2['respostas'] = ['Gato', 'Cachorro', 'Papagaio'];

    var perguntas = [pergunta1, pergunta2];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizz'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Pergunta(perguntas[_indexPergunta]['textoPergunta']),
            // ...(perguntas[_indexPergunta]['respostas'] as List<String>)
            //     .map((resposta) {
            //       return Resposta(
            //       resposta,
            //       onPressFunc: _respondePergunta,
            //     );
            // }).toList(),
            for (var resp in perguntas[_indexPergunta]['respostas'])
              Resposta(
                resp,
                onPressFunc: _respondePergunta,
              )
          ],
        ),
      ),
    );
  }
}
