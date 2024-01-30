
import 'package:flutter/material.dart';

class WelcomeNameWidget extends StatelessWidget {
  const WelcomeNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Welcome!',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'Employee name',
          style: TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
