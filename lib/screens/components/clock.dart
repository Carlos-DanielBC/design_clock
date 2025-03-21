import 'dart:async';
import 'dart:math';

import 'package:design_clock/constants.dart';
import 'package:design_clock/models/my_theme_provider.dart';
import 'package:design_clock/screens/components/clock_painter.dart';
import 'package:design_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  State<Clock> createState() => _ClockState();
}

class _ClockState extends State<Clock> {
  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 0),
                    color: kShadowColor.withAlpha((0.14 * 255).toInt()),
                    blurRadius: 64,
                  ),
                ],
              ),
              child: Transform.rotate(
                angle: -pi / 2,
                child: CustomPaint(painter: ClockPainter(context, _dateTime)),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 0,
          right: 0,
          child: Consumer<MyThemeModel>(
            builder:
                (context, theme, child) => InkWell(
                  onTap: () {
                    theme.changeTheme();
                  },
                  child: SvgPicture.asset(
                    theme.isLightTheme
                        ? "assets/icons/Sun.svg"
                        : "assets/icons/Moon.svg",
                    height: 24,
                    width: 24,
                    colorFilter: ColorFilter.mode(
                      Theme.of(context).primaryColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
          ),
        ),
      ],
    );
  }
}
