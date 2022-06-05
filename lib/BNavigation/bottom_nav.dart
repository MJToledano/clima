import 'package:flutter/material.dart';

class BNavigator extends StatefulWidget {
  final Function currentIndex;
  const BNavigator({Key? key, required this.currentIndex}) : super(key: key);

  @override
  State<BNavigator> createState() => _BNavigatorState();
}

class _BNavigatorState extends State<BNavigator> {
  int index = 0;
  @override
  Widget build(BuildContext context) {    
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i){
        setState(() {
          index = i;
          widget.currentIndex(i);          
        });        
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.green,
      iconSize: 25,
      unselectedFontSize: 10,
      items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.outlined_flag),
            label: 'México'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outlined_flag),
            label: 'Estados Unidos'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outlined_flag),
            label: 'Francia'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outlined_flag),
            label: 'España'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.outlined_flag),
            label: 'Inglaterra'
          ),
        ]
      );
  }
}