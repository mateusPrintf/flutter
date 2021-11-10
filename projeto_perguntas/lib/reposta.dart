import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() selecionado;

  Resposta(this.texto, this.selecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: RaisedButton(
  
        textColor: Colors.white,
        color: Colors.blue,

        child: Text(texto),
        onPressed: selecionado,
      ),
    );
  }
}

