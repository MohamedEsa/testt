import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors/color_manager.dart';
import 'package:foodapp/utils/size/font_size.dart';
import 'package:foodapp/utils/size/size_manager.dart';
import 'package:foodapp/utils/strings/strings.dart';

import '../../utils/path/images_path.dart';
import '../../widgets/buttons.dart';

class SignInOrSignUpScreen extends StatefulWidget {
  const SignInOrSignUpScreen({super.key});

  @override
  State<SignInOrSignUpScreen> createState() => _SignInOrSignUpScreenState();
}

class _SignInOrSignUpScreenState extends State<SignInOrSignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage(ImagesPath.signInOrSignUpImage),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),

          // Image.asset(
          //   "assets/images/splashImage.jpg",
          //   fit: BoxFit.fill,
          //   height: double.infinity,
          // ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 250.0,
              child: Column(
                children: [
                  customButton(
                      width: SizeManager.s250,
                      child: const Text(StringManager.signInText),
                      onPressed: () {},
                      textStyle: const TextStyle(
                          fontSize: FontSizeManager.fs18,
                          fontWeight: FontWeight.bold),
                      textColor: ColorManager.darkBlue,
                      color: ColorManager.white),
                  const SizedBox(
                    height: SizeManager.s20,
                  ),
                  customButton(
                      width: SizeManager.s250,
                      child: const Text(StringManager.signUpText),
                      onPressed: () {},
                      textStyle: const TextStyle(
                          fontSize: FontSizeManager.fs18,
                          fontWeight: FontWeight.bold),
                      textColor: ColorManager.white,
                      color: ColorManager.darkOrange),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
