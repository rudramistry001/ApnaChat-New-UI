import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application3/core/app_export.dart';
import 'package:rudra_s_application3/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:rudra_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:rudra_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:rudra_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:rudra_s_application3/widgets/custom_radio_button.dart';
import 'provider/messages_provider.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MessagesScreenState createState() => MessagesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MessagesProvider(),
      child: MessagesScreen(),
    );
  }
}

class MessagesScreenState extends State<MessagesScreen> {
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
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.03, -0.02),
              end: Alignment(1, 1),
              colors: [
                appTheme.cyanA40001,
                appTheme.teal90099,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 11.v),
                _buildMessages(context),
                SizedBox(height: 17.v),
                _buildRecentChatsOne(
                  context,
                  userName: "lbl_shrey_panchal".tr,
                  time: "lbl_06_14".tr,
                ),
                SizedBox(height: 14.v),
                _buildRecent(context),
                SizedBox(height: 13.v),
                _buildRecentChatsThree(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 84.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse4,
        margin: EdgeInsets.only(left: 24.h),
      ),
      centerTitle: true,
      title: Column(
        children: [
          AppbarSubtitle(
            text: "lbl_welcome_back".tr,
            margin: EdgeInsets.only(right: 60.h),
          ),
          SizedBox(height: 1.v),
          AppbarTitle(
            text: "lbl_rudra_mistry".tr,
            margin: EdgeInsets.only(left: 1.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessages(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 36.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_messages".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 6.v),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgPin,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(
                      top: 1.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Text(
                      "lbl_pinned_chat".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAnalyse1,
            height: 41.v,
            width: 32.h,
            margin: EdgeInsets.only(
              top: 10.v,
              bottom: 28.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRecent(BuildContext context) {
    return Consumer<MessagesProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: EdgeInsets.only(left: 11.h),
          child: CustomRadioButton(
            text: "lbl_recent".tr,
            value: "lbl_recent".tr,
            groupValue: provider.radioGroup,
            onChange: (value) {
              provider.changeRadioButton1(value);
            },
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRecentChatsThree(BuildContext context) {
    return SizedBox(
      height: 338.v,
      width: 364.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildRecentChatsOne(
                  context,
                  userName: "lbl_kavel_bhaiii_ji".tr,
                  time: "lbl_06_142".tr,
                ),
                _buildRecentChatsTwo(
                  context,
                  userName: "lbl_raj_patel".tr,
                  time: "lbl_18_03".tr,
                ),
                _buildRecentChatsTwo(
                  context,
                  userName: "lbl_khushi_patel".tr,
                  time: "lbl_17_09".tr,
                ),
                Divider(
                  indent: 28.h,
                  endIndent: 22.h,
                ),
                SizedBox(height: 55.v),
                Divider(
                  indent: 28.h,
                  endIndent: 22.h,
                ),
                SizedBox(height: 55.v),
                Divider(
                  indent: 28.h,
                  endIndent: 22.h,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildRecentChatsOne(
                  context,
                  userName: "lbl_heer_padmani".tr,
                  time: "lbl_06_142".tr,
                ),
                _buildRecentChatsOne(
                  context,
                  userName: "lbl_ayan_memon".tr,
                  time: "lbl_18_03".tr,
                ),
                _buildRecentChatsOne(
                  context,
                  userName: "msg_rudraksha_bhaiii".tr,
                  time: "lbl_17_09".tr,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          40.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.lightBlue500,
            appTheme.deepPurpleA70000,
          ],
        ),
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgIcons,
        height: 32.v,
        width: 312.h,
        margin: EdgeInsets.fromLTRB(54.h, 34.v, 23.h, 43.v),
      ),
    );
  }

  /// Common widget
  Widget _buildRecentChatsOne(
    BuildContext context, {
    required String userName,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillBlack.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 9.h),
            child: Text(
              userName,
              style: theme.textTheme.bodyMedium!.copyWith(
                color: appTheme.whiteA700,
              ),
            ),
          ),
          Text(
            time,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildRecentChatsTwo(
    BuildContext context, {
    required String userName,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      decoration: AppDecoration.fillBlack,
      child: Column(
        children: [
          Divider(
            indent: 6.h,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userName,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
                Text(
                  time,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
