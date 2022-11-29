import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';

import 'package:flutter_signin_button/button_view.dart';
import 'package:foodapp/utils/colors/color_manager.dart';
import 'package:foodapp/utils/size/font_size.dart';
import 'package:foodapp/utils/size/margin_manager.dart';
import 'package:foodapp/utils/size/padding_manager.dart';
import 'package:foodapp/utils/size/size_manager.dart';
import 'package:foodapp/utils/strings/strings.dart';
import 'package:foodapp/widgets/buttons.dart';

import '../../utils/path/images_path.dart';
import '../../widgets/text_form_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  TextEditingController? userNamecontroller = TextEditingController();
  TextEditingController? passwordcontroller = TextEditingController();
  TextEditingController? namecontroller = TextEditingController();
  TextEditingController? phoneNumbercontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.paleWhite,
        appBar: AppBar(
          backgroundColor: ColorManager.paleWhite,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios,
                color: ColorManager.darkBlue,
              )),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: PaddingManager.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //------------sign up  text -----------/
                    const Text(
                      StringManager.signUpText,
                      style: TextStyle(
                          fontSize: FontSizeManager.fs22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------ TextForm FullName -----------/
                    textFormCusotm(
                      labelText: StringManager.fullNameText,
                      keyboardType: TextInputType.text,
                      prefixIcon: const Icon(
                        Icons.person_outline,
                        color: ColorManager.grey,
                      ),
                    ),
                    const SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------ TextForm Email -----------/
                    textFormCusotm(
                      labelText: StringManager.emailText,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: ColorManager.grey,
                      ),
                    ),
                    const SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------ TextForm Phone -----------/
                    textFormCusotm(
                      labelText: StringManager.phoneText,
                      keyboardType: TextInputType.phone,
                      prefixIcon: const Icon(
                        Icons.phone_android_outlined,
                        color: ColorManager.grey,
                      ),
                    ),
                    const SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------ TextForm Password -----------/
                    textFormCusotm(
                        labelText: StringManager.passwordText,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: ColorManager.grey,
                        ),
                        suffixIcon: const Icon(
                          Icons.visibility_off_outlined,
                          color: ColorManager.grey,
                        )),
                    const SizedBox(
                      height: SizeManager.s16,
                    ),

                    //------------ Button Forget Password ? -----------/

                    //------------- Button Sign Up ----------------/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customButton(
                          width: SizeManager.s250,
                          onPressed: () {},
                          color: ColorManager.darkOrange,
                          child: const Text(StringManager.signUpText),
                        ),
                      ],
                    ),
                    //------------- Social Sign Up ----------------/
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(right: MarginManager.m20),
                            child: const Divider(
                              color: ColorManager.grey,
                              height: SizeManager.s36,
                            )),
                      ),
                      const Text(
                        "Or Connect With",
                        style: TextStyle(color: ColorManager.grey),
                      ),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: MarginManager.m20),
                            child: const Divider(
                              color: ColorManager.grey,
                              height: SizeManager.s36,
                            )),
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SignInButton(
                          Buttons.Facebook,
                          mini: true,
                          onPressed: () {},
                        ),
                        SignInButton(
                          Buttons.Twitter,
                          mini: true,
                          onPressed: () {},
                        ),

                        //
                      ],
                    ),
                    //------------- Button Go To Sigin in Screen ----------------/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          StringManager.haveAcoountText,
                          style: TextStyle(color: ColorManager.grey),
                        ),
                        const SizedBox(
                          width: SizeManager.s12,
                        ),
                        customTextButton(
                            onPressed: () {},
                            color: ColorManager.darkBlue,
                            text: StringManager.signInText)
                      ],
                    ),
                    const SizedBox(
                      height: SizeManager.s40,
                    ),
                  ],
                ),
              ),
              //------------- Image  in bottom Screen ----------------/
              const CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage(
                  ImagesPath.signInBottomImage,
                ),
              )
            ],
          ),
        ));
  }
}
