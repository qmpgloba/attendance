
import 'package:flutter/material.dart';

class EmployeeDetailsRowWidget extends StatelessWidget {
  const EmployeeDetailsRowWidget({
    super.key,
    required this.size, required this.title, required this.value,
  });

  final Size size;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: size.width/16,bottom: size.width/16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [const Spacer(),
          SizedBox(
              width: size.width * .4,
              child: Text('$title:',)),
          SizedBox(
              width: size.width * .4,
              child: Text(value))
        ],
      ),
    );
  }
}
