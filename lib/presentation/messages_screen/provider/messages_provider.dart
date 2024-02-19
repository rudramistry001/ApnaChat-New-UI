import 'package:flutter/material.dart';
import 'package:rudra_s_application3/core/app_export.dart';
import 'package:rudra_s_application3/presentation/messages_screen/models/messages_model.dart';

/// A provider class for the MessagesScreen.
///
/// This provider manages the state of the MessagesScreen, including the
/// current messagesModelObj
class MessagesProvider extends ChangeNotifier {
  MessagesModel messagesModelObj = MessagesModel();

  String radioGroup = "";

  @override
  void dispose() {
    super.dispose();
  }

  void changeRadioButton1(String value) {
    radioGroup = value;
    notifyListeners();
  }
}
