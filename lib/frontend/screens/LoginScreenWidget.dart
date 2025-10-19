import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/screens/RegisterScreenWidget.dart';
import 'package:flutter_app/frontend/screens/home_screen_widget.dart';
import 'package:flutter_app/keys/Keys.dart';

class LoginScreen extends StatefulWidget {
  final String data;

  const LoginScreen({super.key, required this.data});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var visibleIcon = Icons.visibility;
  var passwordVisibility = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          margin: EdgeInsets.only(right: 10, left: 10),
          child: Center(
            child: Column(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Login Screen",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text("Email"),
                    hintText: "Enter Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: Icon(Icons.email),
                  ),
                ),
                TextField(
                  controller: passwordController,
                  obscureText: passwordVisibility,
                  decoration: InputDecoration(
                    label: Text("Password"),
                    hintText: "Enter Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(
                      onPressed: () {
                        if (visibleIcon == Icons.visibility) {
                          setState(() {
                            visibleIcon = Icons.visibility_off;
                            passwordVisibility = !passwordVisibility;
                          });
                        } else {
                          setState(() {
                            visibleIcon = Icons.visibility;
                            passwordVisibility = !passwordVisibility;
                          });
                        }
                      },
                      icon: Icon(visibleIcon),
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password"),
                  ),
                  alignment: Alignment.centerRight,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      print(
                        "Email: ${emailController.text} , Password: ${passwordController.text}",
                      );
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) {
                      //       return HomeScreenWidget();
                      //     },
                      //   ),
                      // );

                      Navigator.pushNamed(
                        context,
                        Keys.HOME_SCREEN_ROUTE,
                        arguments: {
                          "email": emailController.text,
                          "password": passwordController.text,
                        },
                      );

                      setState(() {
                        emailController.clear();
                        passwordController.clear();
                      });
                    },
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fixedSize: Size(double.infinity, 20),
                    ),
                  ),
                ),
                SizedBox(height: 100),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context){
                        //       return RegisterScreen();
                        //       }
                        //     )
                        // );

                        Navigator.pushNamed(context, Keys.SIGNUP_SCREEN_ROUTE);
                      },
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
