import 'package:flutter/material.dart';
import 'package:foodapp/utils/colors/color_manager.dart';

import '../../utils/path/images_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Image.asset(
          ImagesPath.signInOrSignUpImage,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        const CircularProgressIndicator(
          color: ColorManager.white,
        ),
      ],
    ));
  }
}
