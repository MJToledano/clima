import 'package:clima/main.dart';
import 'package:flutter/material.dart';

class Espana extends StatelessWidget {
  const Espana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Estado = estados();

    return Center(
      child: Text('España.\n$Estado',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold),),
      );        
  }
}