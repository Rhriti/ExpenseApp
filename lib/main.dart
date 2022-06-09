import 'homepage.dart';
import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:intl/intl.dart';
//import 'homepage.dart';

void main() => runApp(SFW());

class SFW extends StatefulWidget {
  PAstate createState() => PAstate();
}

class PAstate extends State<SFW> {
  List<Transactions> trans_list = [
    Transactions(id: 200, item: 'Noodles', price: 9.99, date: DateTime.now()),
    Transactions(id: 100, item: 'cake', price: 10, date: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peronsalapp',
      home: Column(//textBaseline: TextBaseline.alphabetic,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Card(
          //margin: EdgeInsets.all(25),
          color: Colors.pinkAccent,
          elevation: 22,
          child: Container(
              //transformAlignment: AlignmentGeometry.lerp(a, b, t),
              padding: EdgeInsets.fromLTRB(0, 1, 0, 0),
              //width: 500,
              //height: 100,
              child: Column(children: [
                ListTile(
                    leading: Icon(Icons.android, size: 40),
                    title: Text(
                      ' THIS IS A CARD',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.white,
                        height: 1,
                        letterSpacing: 10,
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {
                      homepage_state().func();
                    },
                    child: Text('PRESS'))
              ])),
        ),
        //TextField(),
        SizedBox(height: 5),
        ...trans_list.map((e) {
          return Card(
              elevation: 20,
              child: Row(
                children: [
                  Container(
                    child: Text(e.price.toString()),
                    margin: EdgeInsets.all(5),
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    padding: EdgeInsets.all(7),
                    width: 50,
                  ),
                  Column(
                    children: [
                      Text(e.item.toString()),
                      Text(DateFormat().format(e.date as DateTime)),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  )
                ],
              ));
        }).toList(),
        Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                    decoration: InputDecoration(
                        labelText: 'Title', icon: Icon(Icons.title))),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'amount',
                      icon: Icon(Icons.currency_rupee),
                      hintText: 'input amount dear'),
                  keyboardType: TextInputType.number,
                ),
              ElevatedButton(onPressed: ()=>{}, child: Text('button'))],
            ),
          ),
          elevation: 20,
        ),
      ]),
    );
  }
}
