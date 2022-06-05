import 'package:clima/BNavigation/mexico.dart';
import 'package:clima/BNavigation/usd.dart';
import 'package:clima/BNavigation/francia.dart';
import 'package:clima/BNavigation/espana.dart';
import 'package:clima/BNavigation/inglaterra.dart';
import 'package:flutter/material.dart';

class Routes extends StatelessWidget {
  final int index;
  const Routes({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> myList = [
      const Mexico(),
      const USD(),
      const Francia(),
      const Espana(),
      const Inglaterra(),
    ];
    return myList[index];
  }
}