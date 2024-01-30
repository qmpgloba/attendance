import 'package:attendance/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MonthlyTimings extends StatelessWidget {
  const MonthlyTimings({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: size.width / 28,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const Text('Mon'),
                  height(5),
                  const Text('29 Jan'),
                ],
              ),
              Column(
                children: [
                  const Text('Check-in'),
                  height(5),
                  const Text('10 am'),
                ],
              ),
              Column(
                children: [
                  const Text('Check-out'),
                  height(5),
                  const Text('7 pm'),
                ],
              ),
              Column(
                children: [
                  const Text('Check-out'),
                  height(5),
                  const Text('7 pm'),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
