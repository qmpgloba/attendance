import 'package:attendance/presentation/home/widgets/checked_time_widget.dart';
import 'package:attendance/presentation/home/widgets/checkin_checkout_slider_widget.dart';
import 'package:attendance/presentation/home/widgets/home_page_date_widget.dart';
import 'package:attendance/presentation/home/widgets/welcome_name_widget.dart';
import 'package:attendance/presentation/widgets/attendance_percentage_widget.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  bool checkedIn = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(size.width / 16),
          child: Column(
            children: [
              const WelcomeNameWidget(),
              const SizedBox(
                height: 30,
              ),
              const HomePageDateWidget(),
              const SizedBox(
                height: 15,
              ),
              AttendancePercentageWidget(size: size),
              const SizedBox(
                height: 20,
              ),
              CheckInCheckoutSlider(checkedIn: checkedIn),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CheckedTimeWidget(
                      size: size, title: 'Check In', time: '10:12 am'),
                  CheckedTimeWidget(
                      size: size, title: 'Check Out', time: '07:12 pm'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
