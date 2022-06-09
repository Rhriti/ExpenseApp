import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  homepage_state createState() => homepage_state();
}

class homepage_state extends State<homepage> {
  List questions = <String>['Hritij', 'Kshitij', 'pankaj', 'Reshma Rana'];
  int index = 0;
  void func() {
    setState(() {
      index = (index + 1) % questions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      questions[index],
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        decoration: TextDecoration.none, 
      ),
    );
  }
}
