import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: MyApp(),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 1;
  void changeBall(){
    num = Random().nextInt(5) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything',
        style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.blue[900],
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(child: Image.asset('images/ball$num.png'),
          onPressed: () {
            setState(() {
              changeBall();
            });

          },),
        ),
        
      ),
    );
  }
}
