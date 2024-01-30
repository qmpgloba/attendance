// ignore_for_file: must_be_immutable

import 'package:attendance/presentation/authentication/widgets/auth_box.dart';
import 'package:attendance/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Authentication extends StatelessWidget {
  Authentication({super.key});
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width / 16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'LOGIN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: size.width / 14,
                  ),
                ),
                height(10),
                AuthBox(controller: emailController, obscureText: false, label: 'Email'),
                height(20),
                AuthBox(controller: passwordController, obscureText: true, label: 'Password'),
                height(20),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.width / 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


