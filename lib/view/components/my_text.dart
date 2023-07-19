import 'package:flutter/material.dart';
import 'package:reginaldo_kyle/core/constants/fonts.dart';

import '../../core/constants/constants.dart';

class MyText extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextDirection? direction;
  final Color? selectionColor;
  final TextStyle? style;
  final FontWeight? weight;
  final double? size;
  final double? wordSpacing;
  final double? letterSpacing;
  final Color? color;
  final List<Shadow>? shadows;
  final TextAlign? align;
  final String? fontFamily;
  const MyText(
    this.text, {
    Key? key,
    this.maxLines,
    this.overflow,
    this.direction,
    this.selectionColor,
    this.style,
    this.weight,
    this.size,
    this.wordSpacing,
    this.color,
    this.letterSpacing,
    this.shadows,
    this.align,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      overflow: overflow,
      textDirection: direction,
      textAlign: align,
      selectionColor: selectionColor,
      style: TextStyle(
        fontSize: size,
        wordSpacing: wordSpacing,
        letterSpacing: letterSpacing,
        color: color ?? Colours.lightTextColor,
        fontWeight: weight,
        shadows: shadows,
        overflow: overflow,
        fontFamily: fontFamily ?? REGULAR,
      ),
    );
  }
}
