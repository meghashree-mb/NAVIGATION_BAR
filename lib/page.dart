import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedIndex=0;
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.yellow,),
        body: Container(),
        bottomNavigationBar: BottomNavigationBar(
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings),
        label: 'Settings',
        ),
         BottomNavigationBarItem(icon: Icon(Icons.share),
        label: 'Share',
        ),
         BottomNavigationBarItem(icon: Icon(Icons.wallet),
        label: 'Wallet',
        ),

        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 5,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.pink,
        type: BottomNavigationBarType.shifting,

        ),
      );
  }
}