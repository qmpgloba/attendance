
import 'package:attendance/presentation/base/base_Screen.dart';

import 'package:attendance/presentation/authentication/login/login.dart';
import 'package:attendance/presentation/authentication/signup/signup.dart';


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,


      home:  const BaseScreen(),

    );
  }
}
