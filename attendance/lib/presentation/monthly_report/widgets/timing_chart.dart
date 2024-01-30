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
      itemCount: 15,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ListTile(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.normal,
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black,
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
                  Text(
                    'Check-in',
                    style: TextStyle(
                      fontSize: size.width / 32,
                      color: Colors.grey,
                    ),
                  ),
                  height(5),
                  const Text('10 am'),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Check-out',
                    style: TextStyle(
                      fontSize: size.width / 32,
                      color: Colors.grey,
                    ),
                  ),
                  height(5),
                  const Text('7 pm'),
                ],
              ),
              Column(
                children: [
                   Text('Remarks', style: TextStyle(
                      fontSize: size.width / 32,
                      color: Colors.grey,
                    ),),
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
