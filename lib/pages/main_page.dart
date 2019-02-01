import 'package:flutter/material.dart';
import '../strings.dart';

class MainPage extends StatefulWidget {
  
  _MainPageState createState() => new _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String title;
  var _family = ["Eric Hao","Hao Yuhan","Gao Liming","Gao Haifeng", "Li Shuping"];
  @override
  void initState() {
    super.initState();
    this.title = Strings.title;
  }
  Widget _buildRow(int i) {
    return ListTile(
      title: Text(
        '${_family[i]}',
        textAlign: TextAlign.right,
        style: TextStyle(
          color: Colors.blue,
        )
      ),
      
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
        
      ),
      body: ListView.builder(
        itemCount: _family.length,
        itemBuilder: (BuildContext context, int pos) {
          return _buildRow(pos);
        }
      )
    );
  }
}