import 'package:flutter/material.dart';

Widget customButton(
        {double height = 40.0,
        double width = 150.0,
        Function()? onPressed,
        Widget? child,
        Color? color,
        Color? textColor,
        TextStyle? textStyle}) =>
    SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: color,
            textStyle: textStyle,
            foregroundColor: textColor),
        onPressed: onPressed,
        child: child,
      ),
    );

Widget customTextButton(
        {Function()? onPressed,
        String? text,
        Color? color,
        double? fontSize}) =>
    TextButton(
        onPressed: onPressed,
        child: Text(
          text ?? '',
          style: TextStyle(color: color, fontSize: fontSize),
        ));
