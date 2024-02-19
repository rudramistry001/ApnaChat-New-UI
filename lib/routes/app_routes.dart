import 'package:flutter/material.dart';
import 'package:rudra_s_application3/presentation/messages_screen/messages_screen.dart';
import 'package:rudra_s_application3/presentation/login_screen/login_screen.dart';
import 'package:rudra_s_application3/presentation/home_screen/home_screen.dart';
import 'package:rudra_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String messagesScreen = '/messages_screen';

  static const String loginScreen = '/login_screen';

  static const String homeScreen = '/home_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        messagesScreen: MessagesScreen.builder,
        loginScreen: LoginScreen.builder,
        homeScreen: HomeScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LoginScreen.builder
      };
}
