import 'package:design_clock/constants.dart';
import 'package:design_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CountryCard extends StatelessWidget {
  final String country, timeZone, time, iconSrc, period;

  const CountryCard({
    super.key,
    required this.country,
    required this.timeZone,
    required this.time,
    required this.iconSrc,
    required this.period,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: SizedBox(
        width: getProportionateScreenWidth(233),
        child: AspectRatio(
          aspectRatio: 1.32,
          child: Container(
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color!,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  country,
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontSize: getProportionateScreenWidth(16),
                      ),
                ),
                SizedBox(height: 5),
                Text(timeZone, style: Theme.of(context).textTheme.bodyLarge),
                Spacer(),
                Row(
                  children: [
                    SvgPicture.asset(
                      iconSrc,
                      width: getProportionateScreenWidth(40),
                      colorFilter: ColorFilter.mode(
                        kAccentIconLightColor,
                        BlendMode.srcIn,
                      ),
                    ),
                    Spacer(),
                    Text(time,
                        style: Theme.of(context).textTheme.headlineSmall!),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        period,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
