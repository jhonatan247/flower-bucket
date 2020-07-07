import 'package:flower_bucket/Utilities/Theme/color/color_scheme.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  final String content;
  final TextAlign align;
  final TextOverflow overflow;
  final double fontSize;
  final FontStyle style;
  final FontWeight weight;
  final Color color;

  TitleText(this.content,
      {this.align = TextAlign.left,
      this.overflow = TextOverflow.visible,
      this.fontSize = 20,
      this.style = FontStyle.normal,
      this.weight = FontWeight.normal,
      this.color = DeepBlueColorScheme.gray});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(content,
          textAlign: align,
          overflow: overflow,
          style: Theme.of(context).textTheme.headline6.copyWith(
              fontSize: fontSize,
              fontStyle: style,
              fontWeight: weight,
              color: color),
          textScaleFactor: 1.2),
    );
  }
}
