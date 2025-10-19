import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/screens/LoginScreenWidget.dart';
import 'package:flutter_app/frontend/screens/splash_screen_widget.dart';

class NavigationWidget extends StatelessWidget {
  const NavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SplashScreenWidget();
  }
}

/*
* Navigation:
*
* A Stack of screens is maintained while we move from one screen to another.
*
* 1) Push method:
*
*     Navigator.push(context, MaterialPageRoute(builder: (context){
        return ScreenToNavigate();
        }
      )
    );
*
* Or
*
* Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
*
* 2) Pop method:
*
* Navigator.pop(context);
*
* 3) PushReplacement method: like pushes the next screen and removes the current screen.
*
*    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context){
          return ScreenToNavigate();
        }
      )
    );
*
*   Or
* Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenToNavigate()));
*
* For Passing data from one screen to another.
*
* we have to pass data from one screen to another ,
* 1) describe final variables before the constructor call.
* 2) accept the data using required parameter(since compulsory to pass), in the constructor call.
* 3) Pass the data in the object of the screen while navigating.
*
*class Screen extends StatefulWidget {
  final String data; // declaring a final var of the data to be accepted.

  const LoginScreen({super.key, required this.data}); // accepting tha data in the constructor call.
  *
  * // Passing the data while Navigating to next screen.
  *
  Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ScreenWidget("data1","data2",...);
                          },
                        ),
                      );
*
* */
