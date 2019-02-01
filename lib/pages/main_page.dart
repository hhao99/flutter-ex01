import 'package:flutter/material.dart';
import '../strings.dart';

class MainPage extends StatefulWidget {
  
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.title)
      ),
      body: Text(
        Strings.welcome_message,
      ),
    );
  }
}