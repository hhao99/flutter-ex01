import 'package:flutter/material.dart';
import 'models/dog.dart';

class DogCard extends StatefulWidget {
  final Dog dog;
  String dogImageUrl;
  DogCard(this.dog);
  @override
  State<StatefulWidget> createState() {
    return _DogCardState(dog);
  }
}


class _DogCardState extends State<DogCard> {
  Dog dog;
  _DogCardState(this.dog);

  Widget get dogImage {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage( renderUrl ?? '')
      )
      ),
      
    );
    
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(dog.name);
  }
}