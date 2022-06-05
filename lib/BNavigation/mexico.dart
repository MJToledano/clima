import 'package:clima/main.dart';
import 'package:flutter/material.dart';

class Mexico extends StatelessWidget {
  const Mexico({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    String Estado = estados();

    return Center(
      child: Text('México.\n$Estado',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold),),
      );
  }
}