import 'package:clima/main.dart';
import 'package:flutter/material.dart';

class Inglaterra extends StatelessWidget {
  const Inglaterra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String Estado = estados();

    return Center(
      child: Text('Inglaterra.\n$Estado',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold),),
      );
  }
}