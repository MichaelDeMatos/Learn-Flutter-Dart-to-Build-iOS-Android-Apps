import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final Function onPressFunc;
  Resposta(this.texto, {@required this.onPressFunc});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(texto),
        color: Colors.redAccent,
        onPressed: onPressFunc,
      ),
    );
  }
}
