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
    return Card(margin: EdgeInsets.symmetric(horizontal: 50,vertical: 20),
      child: Container(padding: EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(icon: Icon(Icons.shopping_bag_outlined),label: Text('Item name')),
              controller: itemcontroller,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'price',icon: Icon(Icons.currency_rupee)),
              controller: pricecontroller,keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
              ),
                onPressed: () {
                  print(itemcontroller);
                  print(pricecontroller);
                  widget.func(itemcontroller.text,double.parse(pricecontroller.text));
                },
                child: Text('submit'))
          ],
        ),
      ),
    );
  }
}
