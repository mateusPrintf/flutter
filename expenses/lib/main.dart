import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Despesas Pessoais')),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,

              child: Card(
                child: Text('Gráfico.')
              ),

            ),
            Card(
              child: Text('Lista de transações.')
            )
          ]
        ));
  }
}
