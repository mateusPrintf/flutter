 import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

 class PerguntaApp extends StatelessWidget{

   var perguntaSelecionada = 0;

   void responder(){
     perguntaSelecionada++;
   }

   @override
   Widget build(BuildContext context){
     final perguntas = [
       '1 - Qual é a sua cor favorita ?',
       '2 - Qual é o seu animal favorito ?',
     ];

     return MaterialApp(
       home: Scaffold(

         appBar: AppBar(
           centerTitle: true,
           title: Text('Perguntas'),
         ),

         body: Column(
           children: <Widget> [
             Text(perguntas[perguntaSelecionada]),
             RaisedButton(
               child: Text('Resposta 1'),
               onPressed: responder,
             ),
             RaisedButton(
               child: Text('Resposta 2'),
               onPressed: responder,
             ),
             RaisedButton(
               child: Text('Resposta 3'),
               onPressed: responder,
             ),
           ],
         ),

       ),
     );
   }
 }

