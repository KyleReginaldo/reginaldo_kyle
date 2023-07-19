import 'package:flutter/material.dart';
import 'package:reginaldo_kyle/core/constants/fonts.dart';
import 'package:reginaldo_kyle/view/components/my_text.dart';
import 'package:reginaldo_kyle/view/components/text_button.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../core/constants/constants.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MyText(
          'Kyle Reginaldo',
          color: Colours.lightTextColor,
          size: 14.sp,
          fontFamily: SEMI_BOLD,
        ),
        Row(
          children: [
            MyTextButton(
              'Recent Work',
              onTap: () {},
            ),
            MyTextButton(
              'Stacks',
              onTap: () {},
            ),
            MyTextButton(
              'About',
              onTap: () {},
            ),
            MyTextButton(
              'Contact',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
