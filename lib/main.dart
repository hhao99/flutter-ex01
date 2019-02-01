import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.title,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.title),
        ),
        body: Center(
          child: Text(
            Strings.welcome_message,
              style: TextStyle(
              fontSize: 20,
              color: Colors.red,
            )
          ) 
        ,)
      )
    );
  }
}


