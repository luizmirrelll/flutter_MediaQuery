import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("latihan mediaquery"),
        ),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                //penuliasan if else
                children: generateContainers(),
              )
            : Row(
                children: generateContainers(),
              ));
  }

//if syratnya kalau betul : else dia kembali nilai salah apa
  List<Widget> generateContainers() {
    return <Widget>[
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        height: 100,
      )
    ];
  }
}
