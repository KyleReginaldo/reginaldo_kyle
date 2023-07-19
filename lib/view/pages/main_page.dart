import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';
import 'package:reginaldo_kyle/view/components/app_bar.dart';
import 'package:reginaldo_kyle/view/components/my_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../core/constants/constants.dart';
import '../../core/constants/fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(2.h),
        decoration: const BoxDecoration(),
        child: Column(
          children: [
            const MyAppBar(),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/person.jpg',
                      height: 12.h,
                      width: 12.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  MyText(
                    'Hi, I\'m Kyle👋',
                    size: 12.sp,
                    fontFamily: LIGHT,
                  ),
                  SizedBox(height: 1.h),
                  GradientText(
                    'Building Responsive,\nRobust, and Lightweight Application.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.sp,
                      fontFamily: LIGHT,
                    ),
                    colors: [
                      Colours.lightTextColor,
                      Colours.darkTextColor,
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Container(
              height: MediaQuery.sizeOf(context).height * 0.2,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(color: Colours.backgroundColorLight),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.flutter,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('Flutter'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.firebase,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('Firebase'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.appwrite,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('Appwrite'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.supabase,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('Supabase'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.nestjs,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('NestJs'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.typescript,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('Typescripts'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Iconify(
                      SimpleIcons.mysql,
                      color: Colours.lightTextColor,
                    ),
                    label: const MyText('Mysql'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
