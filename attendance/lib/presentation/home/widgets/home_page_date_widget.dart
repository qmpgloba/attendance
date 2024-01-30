
import 'package:flutter/material.dart';

class HomePageDateWidget extends StatelessWidget {
  const HomePageDateWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Attendance',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Spacer(),
        Icon(
          Icons.calendar_month,
          size: 20,
        ),
        Text('Fri, 22 Jun 2023'),
      ],
    );
  }
}
