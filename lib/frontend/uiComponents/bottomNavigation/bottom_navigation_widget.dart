import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/screens/LoginScreenWidget.dart';
import 'package:flutter_app/frontend/screens/RegisterScreenWidget.dart';
import 'package:flutter_app/frontend/screens/splash_screen_widget.dart';

class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  var currentIndex = 0;
  var fragments = [
    SplashScreenWidget(),
    LoginScreen(data: 'Aditya'),
    RegisterScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation"),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Container(child: fragments[currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: "Login"),
          BottomNavigationBarItem(
            icon: Icon(Icons.login_sharp),
            label: "Signup",
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: BottomNavigationWidget()));
}
