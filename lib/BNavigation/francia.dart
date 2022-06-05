import 'package:clima/main.dart';
import 'package:flutter/material.dart';

class Francia extends StatelessWidget {
  const Francia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Estado = estados();

    return Center(
      child: Text('Francia.\n$Estado',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold),),
      );        
  }
}