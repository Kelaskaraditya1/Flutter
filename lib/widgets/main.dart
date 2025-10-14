import 'dart:ffi';

import 'package:flutter/cupertino.dart' hide Size;
import 'package:flutter/material.dart' hide Size;

// <--------------------------------------------------------StateLess Widget----------------------------------------------------------------------------->

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("Splash Screen")));
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

  void changeTitle() {
    setState(() {
      if (title == "Radient Dermat App")
        title = "Radient Dermat";
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
        child: ElevatedButton(
          onPressed: () {
            changeTitle();
          },
          child: Text("Submit"),
        ),
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
        child: Text(
          "I am Ironman, I am Vengence, I am the Knight, I am Batman ",
          maxLines: 1, // Shows the maximum no of lines
          textAlign: TextAlign.end,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic,
            color: Colors.black,
            height: 10,
            // the vertical space between 2 lines
            letterSpacing: 2,
            overflow: TextOverflow.ellipsis,
            // gives a show more effect...
            decoration: TextDecoration.underline,
            decorationColor: Colors.redAccent,
            decorationThickness: 2,
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}

// <---------------------------------------------------------------Image Widget----------------------------------------------------------------------------->

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Widget"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
            "https://fastly.picsum.photos/id/738/200/300.jpg?hmac=x-GpfBAQrKyKnrXqne7UJ3rdVnkGD7e-uRhpCcZWb9I",
          ),
          // height: 200,
          // width: 200,
          // height: double.infinity, // For covering Maximum height
          // width: double.infinity,  // For covering Maximum Width
          // fit: BoxFit.cover, //  spreads image uniformly over the image.
          // fit: BoxFit.fitHeight, // covers the entire height
          // fit: BoxFit.contain,
          // covers the entire width.
          alignment: Alignment.bottomRight,
        ),
      ),
    );
  }
}

class CircularImage extends StatelessWidget {
  const CircularImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radient Dermat"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: CircleAvatar(
        backgroundImage: NetworkImage(
          "https://fastly.picsum.photos/id/738/200/300.jpg?hmac=x-GpfBAQrKyKnrXqne7UJ3rdVnkGD7e-uRhpCcZWb9I",
        ),
        radius: 50,
        backgroundColor: Colors.white,
        foregroundColor: Colors.transparent,
      ),
    );
  }
}

// <--------------------------------------------------------------- Normal Button Widget----------------------------------------------------------------------------->

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Widget"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: ElevatedButton(
        onPressed: () {
          print("Data Submitted!!");
        },
        onLongPress: () {
          print("Long Pressed");
        },
        child: Text("Submit"),
        style: ElevatedButton.styleFrom(
          // For Styling the Button
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 10,
          textStyle: TextStyle(
            // For Styling the Text of Button
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        // For Styling Button
      ),
    );
  }
}

// <---------------------------------------------------------------Icon Button Widget----------------------------------------------------------------------------->

class IconButton extends StatefulWidget {
  const IconButton({super.key});

  @override
  State<IconButton> createState() => _IconButtonState();
}

class _IconButtonState extends State<IconButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton.icon(
        onPressed: () {
          print("Login Successful");
        },
        icon: Icon(Icons.account_circle),
        label: Text(
          "Login",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blueGrey,
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          iconColor: Colors.black,
          iconSize: 20,
          iconAlignment: IconAlignment.start,
        ),
      ),
    );
  }
}

// <---------------------------------------------------------------Outline Button Widget----------------------------------------------------------------------------->

class OutlineButtonWidget extends StatefulWidget {
  const OutlineButtonWidget({super.key});

  @override
  State<OutlineButtonWidget> createState() => _OutlineButtonWidgetState();
}

class _OutlineButtonWidgetState extends State<OutlineButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: OutlinedButton(
        onPressed: () {
          print("Outline Button");
        },
        child: Text("Submit"),
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          side: BorderSide(color: Colors.red, width: 5),
          textStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}

// There is also Icon Button and Text Button

// <----------------------------------------------------------------------Floating Action Button Widget----------------------------------------------------------------------------->

// We have to place Floating Action Button not in child, we have to store it in floatingActionButton: Section

class FloatActionButtonWidget extends StatefulWidget {
  const FloatActionButtonWidget({super.key});

  @override
  State<FloatActionButtonWidget> createState() =>
      _FloatActionButtonWidgetState();
}

class _FloatActionButtonWidgetState extends State<FloatActionButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
        floatingActionButton:FloatingActionButton(onPressed: (){
        print("Floating Action Button");
        },
        child: Icon(Icons.add,
        size: 30,
          color: Colors.black,
        ),
          backgroundColor: Colors.greenAccent,
        )
    );
  }
}

// <---------------------------------------------------------------My-App Widget----------------------------------------------------------------------------->

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FloatActionButtonWidget(),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
