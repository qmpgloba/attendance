
import 'package:flutter/material.dart';

class CheckedTimeWidget extends StatelessWidget {
  const CheckedTimeWidget({
    super.key,
    required this.size, required this.title, required this.time,
  });

  final Size size;
  final String title;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * .4,
      height: size.width * .3,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(15),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 22, fontWeight: FontWeight.bold)),
          Text(time,
              style: const TextStyle(
                  fontSize: 19, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
