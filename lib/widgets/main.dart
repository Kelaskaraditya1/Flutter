import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// <--------------------------------------------------------StateLess Widget----------------------------------------------------------------------------->

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Splash Screen"),
      ),
    );
  }
}

// <--------------------------------------------------------StateFull Widget----------------------------------------------------------------------------->

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String title = "Radient Dermat App";

  void changeTitle(){
    setState(() {
      if(title=="Radient Dermat App")
        title="Radient Dermat";
      else
        title = "Radient Dermat App";
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          changeTitle();
        },
            child: Text("Submit")),
      ),
    );
  }
}
// <---------------------------------------------------------------Text Widget----------------------------------------------------------------------------->
class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Text("I am Ironman, I am Vengence, I am the Knight, I am Batman ",
        maxLines: 1, // Shows the maximum no of lines
          textAlign: TextAlign.end,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          color: Colors.black,
          height: 10,// the vertical space between 2 lines
          letterSpacing: 2,
          overflow: TextOverflow.ellipsis, // gives a show more effect...
          decoration: TextDecoration.underline,
          decorationColor: Colors.redAccent,
          decorationThickness: 2,
          backgroundColor: Colors.red
          ),
        ),
      ),
    );
  }
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         body:Center(
           child:TextWidget(),
         ),
      ),
    );
  }
}


void main(){
  runApp(MyApp());
}