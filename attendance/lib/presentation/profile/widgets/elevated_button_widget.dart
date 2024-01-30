import 'package:attendance/presentation/authentication/login/login.dart';
import 'package:flutter/material.dart';

class ElevatedButtonsWidget extends StatelessWidget {
  const ElevatedButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('Edit Profile')),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ),
              );
            },
            child: const Text('Logout')),
      ],
    );
  }
}
