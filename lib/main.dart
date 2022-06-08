import 'package:flutter/material.dart';
//import 'homepage.dart';

void main() => runApp(PA());

class PA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peronsalapp',
      home: Column(         
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            margin: EdgeInsets.all(25),
            color: Colors.pinkAccent,
            elevation: 22,
            child: Container(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
              width: 500 ,height: 100,
              child: ListTile(
                leading: Icon(Icons.android,size:40),

              ) 
            ) ,
          ),
        ],
      ),
    );
  }
}
