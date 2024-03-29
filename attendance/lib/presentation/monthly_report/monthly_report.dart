import 'package:attendance/presentation/monthly_report/widgets/timing_chart.dart';
import 'package:attendance/presentation/widgets/attendance_percentage_widget.dart';
import 'package:attendance/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MonthlyReport extends StatelessWidget {
  const MonthlyReport({super.key});

  @override
  Widget build(BuildContext context) {
    var month = DateFormat('MMMM').format(DateTime.now());

    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MonthlyReport'),
        centerTitle: true,
      ),

      body: Padding(
              padding: EdgeInsets.only(
      left: size.width / 16,
      right: size.width / 16,
      top: size.width / 16,
              ),
              child: NestedScrollView(
      physics: const BouncingScrollPhysics(),
      // controller: FixedExtentScrollController(),
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverToBoxAdapter(
          child: Center(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // RichText(
                //   text: const TextSpan(
                //     children: [
                //       TextSpan(
                //         text: '97%  ',
                //         style: TextStyle(
                //           fontStyle: FontStyle.italic,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 26,
                //         ),
                //       ),
                //       TextSpan(
                //         text: 'Attendance',
                //         style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 18,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // height(10),
                const Text('26 days has passed in'),
                const Text(
                  'June',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                height(10),
               AttendancePercentageWidget(size: size),
                height(10),
                SizedBox(
                  width: size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        firstDate: DateTime(2000, 5),
                        lastDate: DateTime(2050, 5),
                      );
                    },
                    child: Text(month),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
      body:
       MonthlyTimings(size: size),
              ),
            ),

    );
  }
}
