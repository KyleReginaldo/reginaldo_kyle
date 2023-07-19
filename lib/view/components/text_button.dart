// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:reginaldo_kyle/view/components/my_text.dart';

import '../../core/constants/fonts.dart';

class MyTextButton extends StatelessWidget {
  final String text;
  final double? size;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;
  const MyTextButton(
    this.text, {
    Key? key,
    this.size,
    this.padding,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(padding: MaterialStatePropertyAll(padding)),
      onPressed: onTap,
      child: MyText(
        text,
        fontFamily: SEMI_BOLD,
      ),
    );
  }
}
