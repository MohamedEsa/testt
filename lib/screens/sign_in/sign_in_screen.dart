import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/button_builder.dart';
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

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  TextEditingController? userNamecontroller = TextEditingController();
  TextEditingController? passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorManager.paleWhite,
        appBar: AppBar(
          backgroundColor: ColorManager.paleWhite,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
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
                      StringManager.signInText,
                      style: TextStyle(
                          fontSize: FontSizeManager.fs22,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------ TextForm UserName -----------/
                    textFormCusotm(
                      labelText: StringManager.userNameText,
                      keyboardType: TextInputType.emailAddress,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: ColorManager.grey,
                      ),
                    ),
                    SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------ TextForm Password -----------/
                    textFormCusotm(
                        labelText: StringManager.passwordText,
                        keyboardType: TextInputType.visiblePassword,
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: ColorManager.grey,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                          color: ColorManager.grey,
                        )),
                    SizedBox(
                      height: SizeManager.s16,
                    ),

                    //------------ Button Forget Password ? -----------/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        customTextButton(
                            text: StringManager.forgetPasswordText,
                            onPressed: () {},
                            color: ColorManager.grey),
                      ],
                    ),
                    SizedBox(
                      height: SizeManager.s16,
                    ),
                    //------------- Button Sign In ----------------/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        customButton(
                          width: SizeManager.s250,
                          onPressed: () {},
                          color: ColorManager.darkOrange,
                          child: Text(StringManager.signInText),
                        ),
                      ],
                    ),
                    //------------- Social Sign In ----------------/
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(right: MarginManager.m20),
                            child: Divider(
                              color: ColorManager.grey,
                              height: SizeManager.s36,
                            )),
                      ),
                      Text(
                        "Or Connect With",
                        style: TextStyle(color: ColorManager.grey),
                      ),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: MarginManager.m20),
                            child: Divider(
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
                    //------------- Button Go To Sigin Up Screen ----------------/
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          StringManager.dontHaveAcoountText,
                          style: TextStyle(color: ColorManager.grey),
                        ),
                        SizedBox(
                          width: SizeManager.s12,
                        ),
                        customTextButton(
                            onPressed: () {},
                            color: ColorManager.darkBlue,
                            text: StringManager.signUpText)
                      ],
                    ),
                    SizedBox(
                      height: SizeManager.s40,
                    ),
                  ],
                ),
              ),
              //------------- Image  in bottom Screen ----------------/
              CircleAvatar(
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
