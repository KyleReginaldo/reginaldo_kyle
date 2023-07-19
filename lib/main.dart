import 'package:flutter/material.dart';
import 'package:reginaldo_kyle/core/constants/fonts.dart';
import 'package:reginaldo_kyle/view/pages/main_page.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (p0, p1, p2) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KD Reginaldo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colours.backgroundColor,
          fontFamily: REGULAR,
          primaryColor: Colours.primaryColor,
          colorScheme: ColorScheme.fromSeed(seedColor: Colours.primaryColor),
          useMaterial3: true,
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                foregroundColor:
                    MaterialStatePropertyAll(Colours.lightTextColor),
                iconColor: MaterialStatePropertyAll(
                  Colours.lightTextColor,
                )),
          ),
        ),
        home: const MainPage(),
      );
    });
  }
}
