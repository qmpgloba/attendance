
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class AttendancePercentageWidget extends StatelessWidget {
  const AttendancePercentageWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.width * .7,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: CircularPercentIndicator(
          radius: size.width * .2,
          lineWidth: 13.0,
          animation: true,
          percent: 0.7,
          center: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "70.0%",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 30.0),
              ),
              Text(
                'Attendance',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Colors.purple,
        ),
      ),
    );
  }
}
