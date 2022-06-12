import 'package:flutter/material.dart';
import '../model/transaction.dart';
import 'package:intl/intl.dart';

class SLW extends StatelessWidget {
  List<Transaction> list;
  SLW(this.list);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: list.map((ele) {
      return Card(
        elevation: 10,
        child: Row(
          children: [
            Container(
              child: Row(
                children: [
                  Icon(
                    Icons.currency_rupee_outlined,
                    size: 17,
                  ),
                  Text(
                    ele.amount.toString(),
                  ),
                ],
              ),
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              margin: EdgeInsets.all(10),
            ),
            Column(
              children: [
                Text(
                  ele.item,
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1,
                    overflow: TextOverflow.visible,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(DateFormat.yMd().format(ele.date))
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            )
          ],
        ),
        margin: EdgeInsets.all(10),
      );
    }).toList());
  }
}
