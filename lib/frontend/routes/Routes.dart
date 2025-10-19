import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/screens/LoginScreenWidget.dart';
import 'package:flutter_app/frontend/screens/RegisterScreenWidget.dart';
import 'package:flutter_app/frontend/screens/home_screen_widget.dart';
import 'package:flutter_app/frontend/screens/splash_screen_widget.dart';
import 'package:flutter_app/keys/Keys.dart';

class Routes {
  static Map<String, WidgetBuilder> getStaticRoutes() => {
    Keys.SPLASH_SCREEN_ROUTE: (context) => SplashScreenWidget(),
    Keys.LOGIN_SCREEN_ROUTE: (context) => LoginScreen(),
    Keys.SIGNUP_SCREEN_ROUTE: (context) => RegisterScreen(),
  };

  static getDynamicRoutes(RouteSettings settings) {
    switch (settings.name) {
      case (Keys.HOME_SCREEN_ROUTE):
        {
          Map<String, Object> data = settings.arguments as Map<String, Object>;

          return MaterialPageRoute(
            builder: (context) {
              return HomeScreenWidget(
                email: data["email"].toString(),
                password: data["password"].toString(),
              );
            },
          );
        }
    }
  }
}
