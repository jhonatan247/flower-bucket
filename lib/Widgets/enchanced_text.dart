import 'package:flutter/material.dart';
import 'package:flower_bucket/Utilities/Theme/theme.dart';
import 'package:flutter/services.dart';

class EnchancedText extends StatelessWidget {
  final String hint;
  final String label;
  final String initialValue;
  final bool enabled;
  final bool isPassword;
  final bool isNumber;
  final bool isEmail;
  final bool autovalidate;
  final int maxLines;
  final int maxLength;
  final IconData iconId;
  final Function validator;
  final Function onSaved;
  final TextInputFormatter formatter;
  final TextEditingController controller;

  EnchancedText(this.label, this.hint,
      {@required this.controller,
      this.initialValue,
      this.iconId,
      this.onSaved,
      this.validator,
      this.formatter,
      this.maxLength,
      this.maxLines = 1,
      this.enabled = true,
      this.isPassword = false,
      this.isNumber = false,
      this.isEmail = false,
      this.autovalidate = false});

  static String isValidEmail(String emailCandidate) {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailCandidate);
    if (!emailValid) {
      return 'Enter a valid email';
    }
    return null;
  }

  static String isValidUsername(String usernameCandidate) {
    if (usernameCandidate.length < 3) {
      return 'Enter a valid user name';
    }
    return null;
  }

  static String isValidPassword(String passwordCandidate) {
    if (passwordCandidate.length < 3) {
      return 'Enter a valid password';
    }
    return null;
  }

  static String isValidOrderNumber(String orderNumberCandidate) {
    if (orderNumberCandidate.length < 3) {
      return 'Enter a valid order number';
    }
    return null;
  }

  static String isValidName(String nameCandidate) {
    if (nameCandidate.length < 3) {
      return 'Enter a valid name';
    }
    return null;
  }

  static String isValidPhone(String phoneCandidate) {
    bool phoneValid = RegExp(r"^(?:[+0]9)?[0-9]{10}$").hasMatch(phoneCandidate
        .replaceAll("-", "")
        .replaceAll("(", "")
        .replaceAll(")", "")
        .replaceAll(" ", ""));
    if (!phoneValid) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    var decoration = DCXTheme.getTextAreaDecoration(hint);

    if (iconId != null) {
      decoration = DCXTheme.getMaterialIconTextFieldDecoration(hint, iconId);
    }

    return Container(
        height: label != null ? 150 : 120,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            label != null
                ? Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        label,
                        style: Theme.of(context).textTheme.headline4.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        textScaleFactor: 1.0,
                      ),
                    ),
                    margin: EdgeInsets.fromLTRB(0, 5, 0, 7),
                  )
                : Container(),
            Container(
              child: TextFormField(
                autovalidate: autovalidate,
                autofocus: false,
                keyboardType: isNumber
                    ? TextInputType.number
                    : (isEmail
                        ? TextInputType.emailAddress
                        : TextInputType.text),
                inputFormatters: buildFormatters(),
                enabled: enabled,
                decoration: decoration,
                maxLines: maxLines,
                onSaved: onSaved,
                obscureText: isPassword,
                style: Theme.of(context).textTheme.headline4,
                validator: validator,
                controller: controller,
              ),
              margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
            ),
          ],
        ));
  }

  List<TextInputFormatter> buildFormatters() {
    List<TextInputFormatter> formatters = [];

    if (isNumber) {
      formatters.add(WhitelistingTextInputFormatter.digitsOnly);
    }
    if (maxLength != null) {
      formatters.add(LengthLimitingTextInputFormatter(maxLength));
    }
    if (formatter != null) {
      formatters.add(formatter);
    }

    if (formatters.isEmpty) {
      return null;
    }
    return formatters;
  }
}
