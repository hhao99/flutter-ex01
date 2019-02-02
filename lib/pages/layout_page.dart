import 'package:flutter/material.dart';

// import '../strings.dart';

class LayoutPage extends StatefulWidget {
  
  createState() => new _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('short'),
                onPressed: ()=> print(''),
              ),
              RaisedButton(
                child: Text('medium'),
                onPressed: ()=> print('pressed'),
              ),
              RaisedButton(
                child: Text('long'),
                onPressed: ()=> print('pressed')
              ),
            ]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ 
              Icon(Icons.star, size: 30),
              Icon(Icons.star, size: 30),
              Icon(Icons.star, size: 30),
              ]
          ),
          
        ]
      ),
    );
  }
}