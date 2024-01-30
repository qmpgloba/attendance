
import 'package:attendance/presentation/profile/widgets/employee_details_row_widget.dart';
import 'package:flutter/material.dart';

class EmployeeDetailsWidget extends StatelessWidget {
  const EmployeeDetailsWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: size.width,
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: size.width / 16,bottom: size.width/16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmployeeDetailsRowWidget(
                size: size, title: 'Name', value: 'Employee name'),
            EmployeeDetailsRowWidget(
                size: size, title: 'Designation', value: 'Role'),
            EmployeeDetailsRowWidget(
                size: size, title: 'Mobile', value: '5467865645'),
            EmployeeDetailsRowWidget(
                size: size,
                title: 'Email',
                value: 'employee@qmpglobal.in'),
          ],
        ),
      ),
    );
  }
}
