import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
              const Row(
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
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
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
              ),
              const SizedBox(
                height: 20,
              ),
              ActionSlider.standard(
                backgroundColor: Colors.white30,
                rolling: true,
                direction:
                    checkedIn == false ? TextDirection.ltr : TextDirection.rtl,
                child: const Text(
                  'Slide to Check In',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                action: (controller) async {
                  controller.loading(); //starts loading animation
                  await Future.delayed(const Duration(seconds: 3));
                  controller.success();
                },
                //many more parameters
              )
            ],
          ),
        ),
      ),
    );
  }
}
