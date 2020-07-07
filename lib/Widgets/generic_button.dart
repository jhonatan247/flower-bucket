import 'package:flutter/material.dart';
import 'package:flower_bucket/Utilities/Theme/color/color_scheme.dart';

enum ButtonType {
  Flat,
  Raised,
}
enum ButtonStyle { Primary, Secondary, Neutral }

class GenericButton extends StatelessWidget {
  final Function onPressed;
  final IconData sufixIcon;
  final IconData prefixIcon;
  final String content;
  final ButtonType type;
  final ButtonStyle style;

  GenericButton(
    this.content, {
    @required this.onPressed,
    this.type = ButtonType.Raised,
    this.style = ButtonStyle.Secondary,
    this.sufixIcon,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> buttonContent = [];
    bool enabled = onPressed != null;
    final iconColor = getGenericRaisedButtonTextColor(style, enabled);
    if (prefixIcon != null) {
      buttonContent.add(Icon(
        prefixIcon,
        color: iconColor,
      ));
    }
    buttonContent.add(RichText(
      textScaleFactor: 1.5,
      text: TextSpan(
        text: content,
        style: getGenericRaisedButtonTextStyle(style, enabled),
      ),
    ));
    if (sufixIcon != null) {
      buttonContent.add(Container(
        margin: EdgeInsets.only(left: 5),
        child: Icon(
          sufixIcon,
          color: iconColor,
        ),
      ));
    }

    return Container(
      height: 80,
      child: type == ButtonType.Raised
          ? RaisedButton(
              onPressed: enabled ? onPressed : null,
              color: getBackgroundColor(style, enabled),
              disabledColor: DeepBlueColorScheme.softGray,
              child: Row(
                children: buttonContent,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            )
          : FlatButton(
              onPressed: enabled ? onPressed : null,
              color: getBackgroundColor(style, enabled),
              disabledColor: DeepBlueColorScheme.softGray,
              child: Row(
                children: buttonContent,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ),
    );
  }

  static Color getBackgroundColor(ButtonStyle style, bool enabled) {
    if (!enabled) {
      return DeepBlueColorScheme.white;
    }
    if (enabled) {
      switch (style) {
        case ButtonStyle.Primary:
          return DeepBlueColorScheme.dcxPrimary;
        case ButtonStyle.Secondary:
          return DeepBlueColorScheme.secondary;
        case ButtonStyle.Neutral:
          return DeepBlueColorScheme.white;
      }
    }
  }

  static TextStyle getGenericRaisedButtonTextStyle(
      ButtonStyle style, bool enabled) {
    return TextStyle(
      color: getGenericRaisedButtonTextColor(style, enabled),
    );
  }

  static Color getGenericRaisedButtonTextColor(
      ButtonStyle style, bool enabled) {
    switch (style) {
      case ButtonStyle.Primary:
        return DeepBlueColorScheme.white;
      case ButtonStyle.Secondary:
        return DeepBlueColorScheme.white;
      case ButtonStyle.Neutral:
        return DeepBlueColorScheme.gray;
    }
    return DeepBlueColorScheme.gray;
  }
}
