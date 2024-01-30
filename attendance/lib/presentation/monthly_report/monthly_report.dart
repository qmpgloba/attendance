import 'package:attendance/presentation/monthly_report/widgets/timing_chart.dart';
import 'package:attendance/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class MonthlyReport extends StatelessWidget {
  const MonthlyReport({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('MonthlyReport'),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
          left: size.width / 16,
          right: size.width / 16,
          top: size.width / 16,
        ),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '97%  ',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                            ),
                          ),
                          TextSpan(
                            text: 'Attendance',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    height(10),
                    const Text('26 days has passed in'),
                    const Text(
                      'June',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    height(10),
                    Container(
                      height: 200,
                      color: Colors.amber,
                    ),
                    height(10),
                  ],
                ),
              ),
            ),
          ],
          body: MonthlyTimings(size: size),
        ),
      )),
    );
  }
}
