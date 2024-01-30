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
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ListTile(
                      titleTextStyle: const TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text('Mon'),
                              height(5),
                              const Text('29 Jan'),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Check-in'),
                              height(5),
                              const Text('10 am'),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Check-out'),
                              height(5),
                              const Text('7 pm'),
                            ],
                          ),
                          Column(
                            children: [
                              const Text('Check-out'),
                              height(5),
                              const Text('7 pm'),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
