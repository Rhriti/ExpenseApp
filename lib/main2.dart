import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  //const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appbar = AppBar();
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Device Width ${MediaQuery.of(context).size.width}"),
            Text("Device Height ${MediaQuery.of(context).size.height}"),
            Text('APpbar height ${appbar.preferredSize.height} padding height ${MediaQuery.of(context).padding.right}}')
          ],
        ),
      ),
    );
  }
}
