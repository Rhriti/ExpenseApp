import 'package:flutter/material.dart';

class Userinput extends StatefulWidget {
  final Function func;
  Userinput(this.func);

  State<Userinput> createState() => _UserinputState();
}

class _UserinputState extends State<Userinput> {
  void trigger() {
    if (itemcontroller.text.isEmpty || double.parse(pricecontroller.text) < 0) {
      return;
    }

    print(itemcontroller.text);
    print(pricecontroller.text);
    widget.func(itemcontroller.text, double.parse(pricecontroller.text));
  }

  final itemcontroller = TextEditingController();
  final pricecontroller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.end,

          children: [
            TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.shopping_bag_outlined),
                  label: Text('Item name')),
              controller: itemcontroller,onSubmitted: (_)=>trigger(),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: 'price', icon: Icon(Icons.currency_rupee)),
              controller: pricecontroller,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => trigger(),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                onPressed: trigger,
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
