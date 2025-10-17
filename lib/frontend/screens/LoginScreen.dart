import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/widgets/main.dart' as material;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

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
        appBar: AppBar(
          title: Text("Login Screen"),
          backgroundColor: Colors.grey,
          centerTitle: true,
        ),
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
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      print(
                        "Email: ${emailController.text} , Password: ${passwordController.text}",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(LoginScreen());
}
