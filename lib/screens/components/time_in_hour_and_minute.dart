import 'dart:async';

import 'package:design_clock/size_config.dart';
import 'package:flutter/material.dart';

class TimeInHourAndMinute extends StatefulWidget {
  const TimeInHourAndMinute({super.key});

  @override
  State<TimeInHourAndMinute> createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {
  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Convert hour to 12-hour format
    int hour = _timeOfDay.hourOfPeriod == 0 ? 12 : _timeOfDay.hourOfPeriod;
    String minute = _timeOfDay.minute.toString().padLeft(
      2,
      '0',
    ); // Para tener 05 en vez de 5
    String period = _timeOfDay.period == DayPeriod.am ? "AM" : "PM";

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$hour:$minute", style: Theme.of(context).textTheme.headline1),
        const SizedBox(width: 5),
        RotatedBox(
          quarterTurns: 3,
          child: Text(
            period,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(18),
              color: Color(0xFFA1B0CA),
            ),
          ),
        ),
      ],
    );
  }
}
