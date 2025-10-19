import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/routes/Routes.dart';
import 'package:flutter_app/frontend/screens/LoginScreenWidget.dart';
import 'package:flutter_app/frontend/screens/home_screen_widget.dart';

import '../../keys/Keys.dart';
import '../navigation/Routing.dart';

class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({Key? key}) : super(key: key);

  @override
  _SplashScreenWidgetState createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;

      print("Navigating to LoginScreen..."); // 👈 Debug log

      // Navigator.push(context,            Normal Routing
      //     MaterialPageRoute(builder: (context){
      //       return SplashScreenWidget();
      //     }
      //       )
      // );

      // Navigator.pushNamed(context, Keys.LOGIN_SCREEN_ROUTE);
      Navigator.pushReplacementNamed(context, Keys.LOGIN_SCREEN_ROUTE);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: FlutterLogo(size: 150)));
  }
}

main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenWidget(),
      // routes: getRoutes(),
      initialRoute: Keys.SPLASH_SCREEN_ROUTE,
      routes: getRoutes(),
      onGenerateRoute: (settings) {
        return Routes.getDynamicRoutes(settings);
      },
    ),
  );
}
