import 'models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application3/core/app_export.dart';
import 'provider/home_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HomeScreenState createState() => HomeScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(1, 1),
              colors: [
                appTheme.cyanA400,
                appTheme.teal90099,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 51.v),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse4,
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          radius: BorderRadius.circular(
                            30.h,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 19.h,
                            bottom: 2.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "lbl_welcome_back".tr,
                                style: theme.textTheme.bodyLarge,
                              ),
                              Text(
                                "lbl_rudra_mistry".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 427.v,
                    width: 363.h,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle11,
                          height: 419.v,
                          width: 229.h,
                          alignment: Alignment.centerRight,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFriendlyRobotAssistant,
                          height: 309.v,
                          width: 211.h,
                          alignment: Alignment.bottomRight,
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            width: 203.h,
                            margin: EdgeInsets.only(bottom: 18.v),
                            child: Text(
                              "msg_hi_rudra_mistry_your".tr,
                              maxLines: 9,
                              overflow: TextOverflow.ellipsis,
                              style:
                                  CustomTextStyles.titleLargePoppins.copyWith(
                                height: 2.00,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 38.v),
                Text(
                  "msg_how_can_i_help_you".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 6.v),
                _buildMessageRow(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildTabStack(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageRow(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 13.h),
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillBlack900.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.v),
            child: Text(
              "lbl_message_me".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRightArrow,
            height: 30.adaptSize,
            width: 30.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabStack(BuildContext context) {
    return Container(
      height: 33.v,
      width: 306.h,
      margin: EdgeInsets.only(
        left: 41.h,
        right: 41.h,
        bottom: 76.v,
      ),
      decoration: AppDecoration.gradientLightBlueToLightBlue.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder40,
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIcons,
        height: 33.v,
        width: 306.h,
        alignment: Alignment.center,
      ),
    );
  }
}
