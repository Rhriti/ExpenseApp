import 'package:flutter/material.dart';
import '../model/transaction.dart';

class SLW extends StatelessWidget {
  List<Transaction> list;
  SLW(this.list);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: list.map((ele) {
      return Card(child: Row(
        children: [Container(child: Text(ele.amount.toString()),),
        Column(children: [Text(ele.item),Text(ele.date.toString())],)],
      ));
    }).toList());
  }
}
