import 'package:flutter/material.dart';
import 'widget/userinput.dart';
import 'model/transaction.dart';
import 'widget/SLW.dart';

void main() => runApp(MYapp());

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Expenseapp(),title: 'ExpenseApp',);
  }
}

class Expenseapp extends StatefulWidget {
  @override
  State<Expenseapp> createState() => _ExpenseappState();
}

class _ExpenseappState extends State<Expenseapp> {
  List<Transaction> translist = [
    Transaction(item: 'banana', date: DateTime.now(), amount: 44.4),
  ];

  void func(String saman, double daam) {
    setState(() {
      translist
          .add(Transaction(item: saman, amount: daam, date: DateTime.now()));
    });
  }

  void bottomsheet(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return Userinput(func);
        });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'ExpenseApp',
        home: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: () => bottomsheet(context),
                  icon: Icon(
                    Icons.add,
                    size: 20,
                  ))
            ],
            title: Text('Expense App'),
          ),
          body: Container(
            height: 500,
            child: Column(
              children: [
                Card(
                  child: Container(
                    child: Text('CARD'),
                    width: double.infinity,
                  ),
                  color: Colors.pink,
                ),
    
              SLW(translist)],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: IconButton(
            onPressed: () => bottomsheet(context),
            icon: Icon(Icons.add),
            color: Colors.pink,
            //highlightColor: Colors.amber,
          ),
        )
        );
  }
}
