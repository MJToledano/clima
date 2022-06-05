import 'package:clima/BNavigation/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'BNavigation/routes.dart';
import 'dart:math';

void main() {

  runApp(const MyApp());
}

String estados(){
  String ?gradosCelsius;
  String ?gradosFar;
  
  gradosCelsius = Random().nextInt(46).toString();
  gradosFar = (int.parse(gradosCelsius) * 1.8 + 32).toStringAsFixed(1);

  String ?Estado;
  String ?EstadoAleatorio;

  if (int.parse(gradosCelsius) <= 10){
    Estado = 'Nevado';
  }else if (true) {
    do {
      EstadoAleatorio = Random().nextInt(7).toString();
    }while(int.parse(EstadoAleatorio) == 0 || int.parse(EstadoAleatorio) == 1 );

    if(int.parse(EstadoAleatorio) == 2){
      Estado = 'Ventoso';
    }else if(int.parse(EstadoAleatorio) == 3){
      Estado = 'Caluroso';
    }else if(int.parse(EstadoAleatorio) == 4){
      Estado = 'Soleado';
    }else if(int.parse(EstadoAleatorio) == 5){
      Estado = 'Lluvioso';
    }else if(int.parse(EstadoAleatorio) == 6){
      Estado = 'Nublado';
    }else if(int.parse(EstadoAleatorio) == 7){
      Estado = 'Tormenta';
    }
  }
  
  String EstadoFinal = '$Estado \n$gradosCelsius°C \n$gradosFar°F';
  return EstadoFinal;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clima',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:PaginaInicial(),
    );
  }
}

class PaginaInicial extends StatefulWidget {
  const PaginaInicial({Key? key}) : super(key: key);

  @override
  State<PaginaInicial> createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  int index = 0;
  BNavigator ?myBNB;

  @override
  void initState() {
    myBNB = BNavigator(currentIndex: (i){
      setState(() {
        index = i;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBNB,
      backgroundColor: Colors.blue,
      body: Routes(index: index),
    );
  }
}