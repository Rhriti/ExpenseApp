import 'package:flutter/material.dart';
import 'package:personal_app/model/transaction.dart';
import 'package:personal_app/widget/userinput.dart';
import 'slw.dart';

class Mainwidget extends StatefulWidget {
  State<Mainwidget> createState() => _MainwidgetState();
}

class _MainwidgetState extends State<Mainwidget> {
  List <Transaction> translist = [
    Transaction(item: 'banana', date: DateTime.now(), amount: 44.4)
  ];

  void func(String saman, double daam) {
    setState(() {
      translist.add(Transaction(item: saman, amount: daam,date: DateTime.now()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SLW(translist), Userinput(func)],
    );
  }
}
