import 'package:design_clock/models/my_theme_provider.dart';
import 'package:design_clock/screens/home_screen.dart';
import 'package:design_clock/theme.dart';
import 'package:device_preview_plus/device_preview_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(DevicePreview(builder: (context) => const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder:
            (context, theme, child) => MaterialApp(
              title: 'Flutter Demo',
              theme: themeData(context),
              darkTheme: darkThemeData(context),
              locale: DevicePreview.locale(context),
              builder: DevicePreview.appBuilder,
              home: HomeScreen(),
              themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            ),
      ),
    );
  }
}
