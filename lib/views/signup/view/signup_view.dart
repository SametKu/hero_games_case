import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:hero_games/core/constants/color_constants.dart';
import 'package:hero_games/core/constants/icon_paths.dart';
import 'package:hero_games/core/states/global_states.dart';
import 'package:hero_games/product/textfield/textfield.dart';
import 'package:hero_games/views/figma_to_flutter/figma_container.dart';
import 'package:hero_games/views/signup/model/signup_view_model.dart';
import 'package:hero_games/views/widgets/custom_button.dart';
import 'package:hero_games/views/widgets/custom_page_design.dart';
import 'package:hero_games/views/widgets/custom_social_button.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  var model = SignUpViewModel();
  final String? errorText = "";
  Color errorColor = const Color(0xFFFF5494);
  Color defaultColor = const Color(0xFF6D59BD);
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool noNeedHelper = false;

  @override
  Widget build(BuildContext context) {
    return BaseDesign(
        topPadding: 63,
        noBackBtn: true,
        child: Padding(
          padding: appFonts.paddingSymetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                IconPaths.logo,
                width: 66,
              ),
              appFonts.spacer(16, Axis.vertical),
              EasyRichText(
                "HealthPal",
                textAlign: TextAlign.start,
                defaultStyle: appFonts.p20(
                    color: ColorConstants.hintTextColor,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Poppins",
                    shadows: [
                      const Shadow(
                          blurRadius: 4,
                          color: ColorConstants.shadowColor,
                          offset: Offset(0, 4))
                    ]),
                patternList: [
                  EasyRichTextPattern(
                      targetString: "Pal",
                      matchWordBoundaries: false,
                      style: appFonts.p20(
                          color: ColorConstants.textColor,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Poppins")),
                ],
              ),
              appFonts.spacer(30, Axis.vertical),
              Text(
                "Create Account",
                style: appFonts.p20(color: ColorConstants.textColor),
              ),
              appFonts.spacer(10, Axis.vertical),
              Text(
                "We are here to help you!",
                style: appFonts.p14(color: ColorConstants.hintTextColor),
              ),
              appFonts.spacer(30, Axis.vertical),
              Column(children: [
                RixaTextFieldFull(
                  controller: nameController,
                  radius: 8,
                  height: 45,
                  autoFocus: true,
                  showCursor: false,
                  enabledColor: ColorConstants.borderColor,
                  borderWidth: 1,
                  backgroundColor: ColorConstants.inputBgColor,
                  hintText: "Your Name",
                  textStyle: appFonts.p14(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w400),
                  hintStyle: appFonts.p14(
                      color: ColorConstants.mediumColor,
                      fontWeight: FontWeight.w400),
                  textInputType: TextInputType.name,
                  focusedColor: ColorConstants.borderColor,
                  innerPadding: appFonts.paddingSymetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: appFonts.paddingOnly(left: 16, right: 10),
                    child: Image.asset(
                      IconPaths.user,
                      width: appFonts.px(18, Axis.horizontal),
                    ),
                  ),
                  onChanged: (String text) {
                    // var noNeedHelper = text.contains("@");
                    // if (this.noNeedHelper != noNeedHelper) {
                    //   setState(() {
                    //     this.noNeedHelper = noNeedHelper;
                    //   });
                    // }
                    // if (isError) {
                    //   model.isValidEmail(text);
                    // }
                  },
                  isUnderline: false,
                  // error: isError,
                  // errorText: model.errorText,
                  // errorStyle: AppFontsPanel.errorStyle,
                ),
                appFonts.spacer(20, Axis.vertical),
                RixaTextFieldFull(
                  controller: emailController,
                  radius: 8,
                  height: 45,
                  //autoFocus: true,
                  showCursor: false,
                  enabledColor: ColorConstants.borderColor,
                  borderWidth: 1,
                  backgroundColor: ColorConstants.inputBgColor,
                  hintText: "Your Email",
                  textStyle: appFonts.p14(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w400),
                  hintStyle: appFonts.p14(
                      color: ColorConstants.mediumColor,
                      fontWeight: FontWeight.w400),
                  textInputType: TextInputType.emailAddress,
                  focusedColor: ColorConstants.borderColor,
                  innerPadding: appFonts.paddingSymetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: appFonts.paddingOnly(left: 16, right: 10),
                    child: Image.asset(
                      IconPaths.email,
                      width: appFonts.px(18, Axis.horizontal),
                    ),
                  ),
                  onChanged: (String text) {
                    // var noNeedHelper = text.contains("@");
                    // if (this.noNeedHelper != noNeedHelper) {
                    //   setState(() {
                    //     this.noNeedHelper = noNeedHelper;
                    //   });
                    // }
                    // if (isError) {
                    //   model.isValidEmail(text);
                    // }
                  },
                  isUnderline: false,
                  // error: isError,
                  // errorText: model.errorText,
                  // errorStyle: AppFontsPanel.errorStyle,
                ),
                appFonts.spacer(20, Axis.vertical),
                RixaTextFieldFull(
                  controller: passwordController,
                  radius: 8,
                  height: 45,
                  //autoFocus: true,
                  showCursor: false,
                  enabledColor: ColorConstants.borderColor,
                  borderWidth: 1,
                  backgroundColor: ColorConstants.inputBgColor,
                  hintText: "Your Password",
                  textStyle: appFonts.p14(
                      color: ColorConstants.primaryColor,
                      fontWeight: FontWeight.w400),
                  hintStyle: appFonts.p14(
                      color: ColorConstants.mediumColor,
                      fontWeight: FontWeight.w400),
                  textInputType: TextInputType.emailAddress,
                  focusedColor: ColorConstants.borderColor,
                  innerPadding: appFonts.paddingSymetric(vertical: 10),
                  prefixIcon: Padding(
                    padding: appFonts.paddingOnly(left: 16, right: 10),
                    child: Image.asset(
                      IconPaths.lock,
                      width: appFonts.px(18, Axis.horizontal),
                    ),
                  ),
                  onChanged: (String text) {
                    // var noNeedHelper = text.contains("@");
                    // if (this.noNeedHelper != noNeedHelper) {
                    //   setState(() {
                    //     this.noNeedHelper = noNeedHelper;
                    //   });
                    // }
                    // if (isError) {
                    //   model.isValidEmail(text);
                    // }
                  },
                  isUnderline: false,
                  // error: isError,
                  // errorText: model.errorText,
                  // errorStyle: AppFontsPanel.errorStyle,
                ),
                appFonts.spacer(24, Axis.vertical),
                CustomButton("Create Account",
                    horizontalPadding: 0,
                    color: ColorConstants.btnColor,
                    onPressed: () {}),
                appFonts.spacer(24, Axis.vertical),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Divider(),
                    FigmaContainer(
                      width: 64,
                      height: 24,
                      alignment: Alignment.topCenter,
                      color: Colors.white,
                      child: Text(
                        "or",
                        style: appFonts.p16(
                            color: ColorConstants.hintTextColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter'),
                      ),
                    )
                  ],
                ),
                appFonts.spacer(24, Axis.vertical),
                CustomSocialButton("Continue with Google",
                    iconPath: IconPaths.google, onPressed: () {}),
                appFonts.spacer(16, Axis.vertical),
                CustomSocialButton("Continue with Facebook",
                    iconPath: IconPaths.facebook, onPressed: () {}),
                appFonts.spacer(24, Axis.vertical),
                GestureDetector(
                  onTap: () {},
                  child: EasyRichText(
                    "Do you have an account ? Sign In",
                    textAlign: TextAlign.start,
                    defaultStyle: appFonts.p14(
                        color: ColorConstants.hintTextColor,
                        fontWeight: FontWeight.w400),
                    patternList: [
                      EasyRichTextPattern(
                          targetString: "Sign In",
                          matchWordBoundaries: false,
                          style: appFonts.p14(
                              color: ColorConstants.textBtnColor,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}
