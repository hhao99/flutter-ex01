import 'package:flutter/material.dart';
import 'strings.dart';
// import 'pages/main_page.dart';
//import 'pages/layout_page.dart';
import 'pages/dog_page.dart';
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
      home: DogPage(),
    );
  }
}


