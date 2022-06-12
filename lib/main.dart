import 'package:flutter/material.dart';
import '../widget/mainwidegt.dart';

void main() => runApp(Expenseapp());

class Expenseapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ExpenseApp',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [Card(child: Container(child: Text('CARD'),width: double.infinity,),color: Colors.pink,),Mainwidget()],
          ),
        ),
      )
    );
  }
}
