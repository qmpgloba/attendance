import 'package:attendance/core/constants/constants.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
   int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.2,
          // fixedColor: kWhiteColor,
          
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.purple,
          currentIndex: _currentIndex,
          backgroundColor: Colors.black38,

          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: '\u2022'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: '\u2022'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person), label: '\u2022'),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.notifications_none), label: '\u2022'),
            // BottomNavigationBarItem(icon: Icon(Icons.person), label: '\u2022')
          ]),
      body: SafeArea(child: screens[_currentIndex]),
    );
  }
}