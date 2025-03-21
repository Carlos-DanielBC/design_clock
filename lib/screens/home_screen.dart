import 'package:design_clock/screens/components/body.dart';
import 'package:design_clock/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    SizeConfig().init(context);

    return Scaffold(appBar: buildAppBar(theme), body: Body());
  }

  AppBar buildAppBar(ThemeData theme) {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/Settings.svg",
          colorFilter: ColorFilter.mode(
            theme.iconTheme.color ?? Colors.black,
            BlendMode.srcIn,
          ), //Theme.of(context).iconTheme.color,
        ),
      ),
      actions: [buildAddButton(theme)],
    );
  }

  Padding buildAddButton(ThemeData theme) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionateScreenWidth(32),
          decoration: BoxDecoration(
            color: theme.primaryColor,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
