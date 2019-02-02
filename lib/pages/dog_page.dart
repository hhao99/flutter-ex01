import 'package:flutter/material.dart';
import 'models/dog.dart';
import 'dog_card.dart';

class DogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    
    return new _DogPageState();
  }
}

class _DogPageState extends State<DogPage> {
  List<Dog> _dogges = []
    ..add( Dog('robin','robin','cute girl'))
    ..add( Dog('kong','hound','brutal predator'))
    ..add( Dog('lucky','baby','smart boy'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: new Text("Dog Page")),
      body: DogCard(_dogges[1]),
    );


  }

}