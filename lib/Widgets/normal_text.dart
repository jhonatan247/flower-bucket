import 'package:flower_bucket/Utilities/Theme/color/color_scheme.dart';
import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  final String content;
  final TextAlign align;
  final TextOverflow overflow;
  final double fontSize;
  final FontStyle style;
  final FontWeight weight;
  final Color color;

  NormalText(this.content,
      {this.align = TextAlign.left,
      this.fontSize = 16,
      this.overflow = TextOverflow.visible,
      this.style = FontStyle.normal,
      this.weight = FontWeight.normal,
      this.color = DeepBlueColorScheme.gray});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Text(content,
          overflow: overflow,
          textAlign: align,
          style: Theme.of(context).textTheme.headline4.copyWith(
              fontSize: fontSize,
              fontStyle: style,
              fontWeight: weight,
              color: color),
          textScaleFactor: 1.2),
    );
  }
}
