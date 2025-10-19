import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/screens/LoginScreenWidget.dart';
import 'package:flutter_app/keys/Keys.dart';

class HomeScreenWidget extends StatelessWidget {
  final String email;
  final String password;

  const HomeScreenWidget({
    Key? key,
    required String this.email,
    required String this.password,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("{Email: $email, \n Password: $password}");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Home Screen"),
            ElevatedButton(
              onPressed: () {
                // Navigator.pushReplacement(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => LoginScreen(data: "Aditya"),
                //   ),
                // );

                Navigator.pushNamed(context, Keys.LOGIN_SCREEN_ROUTE);
              },
              child: Text(
                "Logout",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
