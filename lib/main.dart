import 'package:flutter/material.dart';
import 'Screen1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Center(child: Text("ECom App UI", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.notifications, color: Colors.black,),
            ),
          ]
        ),
        body: Center(child: Screen11())),
    );
  }
}