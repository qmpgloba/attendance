
import 'package:action_slider/action_slider.dart';
import 'package:flutter/material.dart';

class CheckInCheckoutSlider extends StatelessWidget {
  const CheckInCheckoutSlider({
    super.key,
    required this.checkedIn,
  });

  final bool checkedIn;

  @override
  Widget build(BuildContext context) {
    return ActionSlider.standard(
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
    );
  }
}