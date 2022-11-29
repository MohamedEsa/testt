import 'package:flutter/material.dart';

import '../utils/colors/color_manager.dart';
import '../utils/size/font_size.dart';
import '../utils/size/size_manager.dart';
import '../utils/strings/strings.dart';

Widget textFormCusotm(
        {TextEditingController? controller,
        bool obscureText = false,
        Function()? onTap,
        Function(String)? onChanged,
        TextInputType? keyboardType,
        Widget? suffixIcon,
        Widget? prefixIcon,
        String? labelText}) =>
    TextFormField(
      obscureText: obscureText,
      controller: controller,
      onTap: onTap,
      keyboardType: keyboardType,
      onChanged: onChanged,
      decoration: InputDecoration(
          filled: true,
          fillColor: ColorManager.paleWhite,
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: TextStyle(
              fontSize: FontSizeManager.fs18, color: ColorManager.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(SizeManager.s20),
              borderSide: BorderSide(color: Colors.red)),
          contentPadding: EdgeInsets.only(top: 0, left: 25),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(SizeManager.s20),
            borderSide: BorderSide(color: ColorManager.orange),
          ),
          prefixIcon: prefixIcon,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 2.0,
            ),
          )),
    );



// IconButton(
//             onPressed: (() {}),
//             icon: Icon(
//               Icons.visibility_off,
//               color: ColorManager.grey,
//             ))