import 'models/login_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application3/core/app_export.dart';
import 'package:rudra_s_application3/core/utils/validation_functions.dart';
import 'package:rudra_s_application3/widgets/custom_icon_button.dart';
import 'package:rudra_s_application3/widgets/custom_text_form_field.dart';
import 'provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  LoginScreenState createState() => LoginScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => LoginProvider(), child: LoginScreen());
  }
}

// ignore_for_file: must_be_immutable
class LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.homeScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0, 0),
                        end: Alignment(1.02, 1.01),
                        colors: [appTheme.cyanA400, appTheme.teal9009901])),
                child: Form(
                    key: _formKey,
                    child: SizedBox(
                        width: double.maxFinite,
                        child: SingleChildScrollView(
                            child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 11.h),
                                child: Column(children: [
                                  SizedBox(
                                      height: 544.v,
                                      width: 338.h,
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                    height: 544.v,
                                                    width: 237.h,
                                                    child: Stack(
                                                        alignment: Alignment
                                                            .bottomCenter,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              child: Container(
                                                                  padding: EdgeInsets.symmetric(
                                                                      horizontal:
                                                                          24.h,
                                                                      vertical:
                                                                          35.v),
                                                                  decoration:
                                                                      AppDecoration
                                                                          .gradientBlueToBlue,
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        Text(
                                                                            "lbl_login"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.displaySmall),
                                                                        SizedBox(
                                                                            height:
                                                                                1.v),
                                                                        Text(
                                                                            "msg_please_login_to"
                                                                                .tr,
                                                                            style:
                                                                                theme.textTheme.bodyLarge)
                                                                      ]))),
                                                          _buildHorizontalScroll(
                                                              context)
                                                        ]))),
                                            Padding(
                                                padding: EdgeInsets.only(
                                                    bottom: 8.v),
                                                child: Selector<LoginProvider,
                                                        TextEditingController?>(
                                                    selector: (context,
                                                            provider) =>
                                                        provider
                                                            .emailController,
                                                    builder: (context,
                                                        emailController,
                                                        child) {
                                                      return CustomTextFormField(
                                                          width: 338.h,
                                                          controller:
                                                              emailController,
                                                          hintText: "lbl_email"
                                                              .tr,
                                                          textInputType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          prefix: Container(
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                      17.h,
                                                                      10.v,
                                                                      13.h,
                                                                      10.v),
                                                              child: CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgMaleUser,
                                                                  height: 41.v,
                                                                  width: 50.h)),
                                                          prefixConstraints:
                                                              BoxConstraints(
                                                                  maxHeight:
                                                                      61.v),
                                                          validator: (value) {
                                                            if (value == null ||
                                                                (!isValidEmail(
                                                                    value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "err_msg_please_enter_valid_email"
                                                                  .tr;
                                                            }
                                                            return null;
                                                          });
                                                    }))
                                          ])),
                                  SizedBox(height: 8.v),
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.h),
                                      child: Selector<LoginProvider,
                                              TextEditingController?>(
                                          selector: (context, provider) =>
                                              provider.passwordController,
                                          builder: (context, passwordController,
                                              child) {
                                            return CustomTextFormField(
                                                controller: passwordController,
                                                hintText: "lbl_password".tr,
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "err_msg_please_enter_valid_password"
                                                        .tr;
                                                  }
                                                  return null;
                                                },
                                                obscureText: true);
                                          })),
                                  SizedBox(height: 25.v),
                                  _buildSocialMediaLogin(context)
                                ]))))))));
  }

  /// Section Widget
  Widget _buildHorizontalScroll(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 140.v),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 404.v,
                    width: 237.h,
                    child: Stack(alignment: Alignment.bottomRight, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgChatgptRobot,
                          height: 456.v,
                          width: 287.h,
                          alignment: Alignment.bottomRight),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                              height: 456.v,
                              width: 287.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgChatgptRobot,
                                        height: 456.v,
                                        width: 287.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 81.v),
                                            child: SizedBox(
                                                child: Divider(
                                                    color: appTheme.black900,
                                                    indent: 59.h))))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildSocialMediaLogin(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 262.v,
            width: 315.h,
            child: Stack(alignment: Alignment.bottomLeft, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      height: 247.adaptSize,
                      width: 247.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.blue70001,
                          borderRadius: BorderRadius.circular(123.h)))),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 9.h, bottom: 102.v),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "msg_don_t_have_an_account2".tr,
                                style:
                                    CustomTextStyles.bodyMediumPoppinsffffffff),
                            TextSpan(
                                text: "lbl_register".tr,
                                style: theme.textTheme.titleSmall)
                          ]),
                          textAlign: TextAlign.left))),
              Align(
                  alignment: Alignment.topLeft,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                            child: SizedBox(width: 80.h, child: Divider())),
                        Padding(
                            padding: EdgeInsets.only(left: 5.h),
                            child: Text("lbl_or_login_with".tr,
                                style: CustomTextStyles.bodyMediumRegular)),
                        Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                            child: SizedBox(
                                width: 86.h, child: Divider(indent: 6.h)))
                      ])),
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(8.h, 45.v, 79.h, 157.v),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomIconButton(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                padding: EdgeInsets.all(10.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgGoogle)),
                            CustomIconButton(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFacebook))
                          ])))
            ])));
  }
}
