import 'package:attendance/presentation/profile/widgets/elevated_button_widget.dart';
import 'package:attendance/presentation/profile/widgets/employee_details_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('profile'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(size.width / 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: size.width * .2,
              ),
              const SizedBox(
                height: 20,
              ),
              EmployeeDetailsWidget(size: size),
              const SizedBox(
                height: 20,
              ),
              const ElevatedButtonsWidget()
            ],
          ),
        ),
      )),
    );
  }
}
