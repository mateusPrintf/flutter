 import 'package:flutter/material.dart';
 import './questao.dart';
 import './reposta.dart';

main() => runApp(PerguntaApp());

 class _PerguntaAppState extends State<PerguntaApp> {
   var _perguntaSelecionada = 0;
   final List<Map<String, Object>> perguntas = const [
       {
         'texto': '1 - Qual é a sua cor favorita ?',
         'respostas': ['Preto','Vermelho','Amarelo','Branco'],
       },
       {
         'texto': '2 - Qual é o seu animal favorito ?',
         'respostas': ['Cachorro','Gato','Leão','Cobra'],
       },
       {
         'texto': '3 - Qual é a sua cidade favorita ?',
         'respostas': ['Batalha','Teresina','Piripiri','Esperantina'],
       }
     ];

   void _responder(){
     setState(() {
       _perguntaSelecionada++;
     });
   }
   

   @override
   Widget build(BuildContext context){
     
     List<Widget> respostas = [];

     for (String textoResp in perguntas[_perguntaSelecionada]['respostas']){
       respostas.add(Resposta(textoResp, _responder));
     }

     return MaterialApp(
       home: Scaffold(

         appBar: AppBar(
           centerTitle: true,
           title: Text('Perguntas'),
         ),

         body: Column(
           children: <Widget> [
             Questao(perguntas[_perguntaSelecionada]['texto']),
             ...respostas,
           ],
         ),

       ),
     );
   }

 }
 class PerguntaApp extends StatefulWidget{

  _PerguntaAppState createState(){
    return _PerguntaAppState();
   }

 }

