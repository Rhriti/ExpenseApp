import 'package:flutter/material.dart';

class Userinput extends StatefulWidget {
  final Function func;
  Userinput(this.func);

  State<Userinput> createState() => _UserinputState();
}

class _UserinputState extends State<Userinput> {
  final itemcontroller = TextEditingController();
  final pricecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'item name'),
            controller: itemcontroller,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'price'),
            controller: pricecontroller,
          ),
          ElevatedButton(
              onPressed: () {
                print(itemcontroller);
                print(pricecontroller);
                widget.func(itemcontroller.text,double.parse(pricecontroller.text));
              },
              child: Text('submit'))
        ],
      ),
    );
  }
}
