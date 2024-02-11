import 'package:flutter/material.dart';
import 'package:rudra_s_application3/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlack => BoxDecoration(
        color: appTheme.black90099,
      );
  static BoxDecoration get fillBlack900 => BoxDecoration(
        color: appTheme.black900.withOpacity(0.6),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.blue700,
            appTheme.lightBlue9001e,
            appTheme.blue700.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientCyanAToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.03, -0.02),
          end: Alignment(1, 1),
          colors: [
            appTheme.cyanA40001,
            appTheme.teal90099,
          ],
        ),
      );
  static BoxDecoration get gradientCyanAToTeal90099 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1, 1),
          colors: [
            appTheme.cyanA400,
            appTheme.teal90099,
          ],
        ),
      );
  static BoxDecoration get gradientCyanAToTeal9009901 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0),
          end: Alignment(1.02, 1.01),
          colors: [
            appTheme.cyanA400,
            appTheme.teal9009901,
          ],
        ),
      );
  static BoxDecoration get gradientLightBlueToLightBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.55, 0),
          end: Alignment(0.55, 1),
          colors: [
            appTheme.lightBlue500,
            appTheme.lightBlue90000,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get circleBorder40 => BorderRadius.circular(
        40.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL15 => BorderRadius.vertical(
        top: Radius.circular(15.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
