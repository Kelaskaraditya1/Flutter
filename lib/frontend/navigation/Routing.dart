import 'package:flutter/cupertino.dart';
import 'package:flutter_app/frontend/screens/RegisterScreenWidget.dart';
import 'package:flutter_app/frontend/screens/home_screen_widget.dart';
import 'package:flutter_app/frontend/screens/splash_screen_widget.dart';

import '../../keys/Keys.dart';
import '../screens/LoginScreenWidget.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    Keys.SPLASH_SCREEN_ROUTE: (context) => SplashScreenWidget(),
    Keys.LOGIN_SCREEN_ROUTE: (context) => LoginScreen(),
    Keys.SIGNUP_SCREEN_ROUTE: (context) => RegisterScreen(),
  };
}

/*
* Routing:
*
* we have to define routes in the main screen for routing from one Screen to another.
*
* This is normal Routing when we don't have to pass any data.
*
* it's a key value pair, like : '/rout': (context) => ScreenWidget() or '/route': (_)=> ScreenWidget();
*   use it in the MaterialApp(
*   routes: getRoutes(), // returns a map of type <String,WidgetBuilder>
    initialRoute: "/" // define the first screen
* )
*
* For Navigating from one screen to another:
*   1) Navigator.pushNames(context,"/route");
*   2) Navigator.pushReplacementNamed(context, "/route");
*
* When we have to pass data from one screen to Another.
*
* than define those routes sprately in onGenerationRoute: In the main screen
*
*       onGenerateRoute: (settings) {  // gives a settings parameter which has the 'name' of the route and 'argument' data that the route brings
        switch (settings.name) {  // we apply switch case as per the name of the route
          case ("/homeScreen"):
            {
              Map<String, Object> data =
                  settings.arguments as Map<String, Object>;  // settings.argument is used to fetch the data from the route
              return MaterialPageRoute(   // Routing to next Screen
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
      *
      * Passing data in arguments: tag while passing from one screen to another.

*                        Navigator.pushReplacementNamed(
                          context,
                          Keys.HOME_SCREEN_ROUTE,
                          arguments: {
                            "email": emailController.text,
                            "password": passwordController.text,
                          },
                        );

*
* Note:
* 1) use all 3 parameters, routes:{}, initialRoute:"", onGenerateRoute:..
*
* define the routes which don't require any data in the function above and assign it to routes:
* when there is screen which requires data, define it in onGenerateRoute, we can also define routes without data as well in onGenerateRoute.
* and finally give the initial route.
*
* */
