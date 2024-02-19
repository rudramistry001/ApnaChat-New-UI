import 'package:flutter/material.dart';
import 'package:rudra_s_application3/core/app_export.dart';
import 'package:rudra_s_application3/presentation/home_screen/models/home_model.dart';

/// A provider class for the HomeScreen.
///
/// This provider manages the state of the HomeScreen, including the
/// current homeModelObj
class HomeProvider extends ChangeNotifier {
  HomeModel homeModelObj = HomeModel();

  @override
  void dispose() {
    super.dispose();
  }
}
