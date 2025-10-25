import 'dart:ffi';

import 'package:flutter/material.dart' hide Size;
import 'package:flutter/material.dart' as material;
import 'package:intl/intl.dart';

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
        child: Text("Submit"),
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
      appBar: AppBar(title: Text("")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button");
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add, size: 30, color: Colors.black),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      ),
    );
  }
}

// <---------------------------------------------------------------------------------------Container Widget----------------------------------------------------------------------------->

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            // borderRadius: BorderRadius.circular(5), if shape of container is Circle than don't use borderRadius.
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange, Colors.deepOrange],
            ),
          ),
          alignment: Alignment.center,
          // color: Colors.blue,
          child: Text(
            "Ironman",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}

class ContainerWidgetForMarginAndPadding extends StatelessWidget {
  const ContainerWidgetForMarginAndPadding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Margin and Padding"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Text(
              "Ironman",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageContainerWidget extends StatelessWidget {
  const ImageContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Container"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black, width: 5),
          ),
          child: Image(
            image: NetworkImage(
              "https://fastly.picsum.photos/id/738/200/300.jpg?hmac=x-GpfBAQrKyKnrXqne7UJ3rdVnkGD7e-uRhpCcZWb9I",
            ),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// <---------------------------------------------------------------------------------------Column Widget----------------------------------------------------------------------------->

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Widget"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        spacing: 20,
        // for giving spacing between the elements.
        mainAxisAlignment: MainAxisAlignment.center,
        // In case of Column this is the Y, used for Alignment on this axis, so Top => Start, End => Bottom
        crossAxisAlignment: CrossAxisAlignment.center,
        // In case of Column this is the X, used for Alignment on this axis, so Start => Start, End => Bottom, also this is aligned as per the maximum of the width.
        children: [
          Text("Login Screen"),
          ElevatedButton(
            onPressed: () {},
            child: Text("Submit"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

// <---------------------------------------------------------------------------------------Row Widget----------------------------------------------------------------------------->

class RowWidget extends StatelessWidget {
  const RowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Widget"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(height: 500, width: 100, color: Colors.red),
            Container(height: 100, width: 100, color: Colors.blue),
            Container(height: 100, width: 100, color: Colors.green),
          ],
        ),
      ),
    );
  }
}

class RowAndColumnWidget extends StatelessWidget {
  const RowAndColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RowAndColumn Widget"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(height: 1, width: double.infinity),
          Text("Login Screen", textAlign: TextAlign.center),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 100, width: 100, color: Colors.red),
              Container(height: 100, width: 100, color: Colors.blue),
              Container(height: 100, width: 100, color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }
}

// <---------------------------------------------------------------TextField Widget----------------------------------------------------------------------------->

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  var visibilityIcon = Icons.visibility;
  var emailController = material.TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: TextField(
          controller: emailController,
          // for getting the text from the TextField.
          obscureText: true,
          // for hiding the text, password
          obscuringCharacter: '*',
          // Can give custom Character,
          keyboardType: material.TextInputType.name,
          // for giving relevant keyboard.
          decoration: InputDecoration(
            label: Text("Email"),
            hintText: "Enter Email",
            contentPadding: EdgeInsets.all(0),
            // border: InputBorder.none,// for Removing the border
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            // For giving Rounder Border.
            prefixIcon: Icon(Icons.email),
            prefixIconColor: Colors.black,
            suffixIcon: material.IconButton(
              onPressed: () {
                if (visibilityIcon == Icons.visibility) {
                  setState(() {
                    visibilityIcon = Icons.visibility_off;
                  });
                } else {
                  setState(() {
                    visibilityIcon = Icons.visibility;
                  });
                }
                print(emailController.text);
              },
              icon: Icon(visibilityIcon),
            ),
          ),
        ),
      ),
    );
  }
}

// <---------------------------------------------------------------Gesture Detector Widget----------------------------------------------------------------------------->

class GestureDetectorWidget extends StatelessWidget {
  const GestureDetectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gesture Decorator"),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: material.Stack(
        children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green,
            ),
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              child: Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(Icons.add, color: Colors.white, size: 40),
              ),
              onTap: () {
                print("Image Uploaded");
              },
            ),
          ),
        ],
      ),
    );
  }
}

// <---------------------------------------------------------------Stack And Positioned Widget----------------------------------------------------------------------------->
/* 1) Stack: Used to stack Widgets over one another
*  2) Positioned: works like a offset, the default position of any widget is (0,0) top left corner
*                 if we put right:0 than it will move towards right, if bottom=0 than it will move towards bottom
*                 Now we can also give +ve and -ve values to this, if +ve value than it will move in the preferred direction, and if -ve value than it will move in opposite direction.
* */

class StackAndPosition extends StatelessWidget {
  const StackAndPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack and Position"),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Container(
        height: 210,
        width: 210,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
            ),
            material.Positioned(
              right: -20,
              bottom: 10,
              child: Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.only(bottom: 10, left: 50),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// <---------------------------------------------------------------DateAndTimePicker----------------------------------------------------------------------------->

class DateAndTimePicker extends StatefulWidget {
  const DateAndTimePicker({super.key});

  @override
  State<DateAndTimePicker> createState() => _DateAndTimePickerState();
}

class _DateAndTimePickerState extends State<DateAndTimePicker> {
  // Move these OUTSIDE build() method - they should be class-level variables
  DateTime? selectedDate = DateTime.now();
  TimeOfDay? selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () async {
              // await OUTSIDE setState
              final pickedDate = await showDatePicker(
                context: context,
                firstDate: DateTime.now().subtract(Duration(days: 365 * 100)),
                lastDate: DateTime.now().add(Duration(days: 365 * 10)),
              );

              // Then use setState synchronously
              if (pickedDate != null) {
                DateTime formatedDate =
                    DateFormat("dd-MM-yyyy").format(pickedDate) as DateTime;
                setState(() {
                  selectedDate = formatedDate;
                });
              }
              print(selectedDate);
            },
            child: Text("Pick Date"),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: ElevatedButton(
              onPressed: () async {
                final pickedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );

                if (pickedTime != null) {
                  setState(() {
                    selectedTime = pickedTime;
                  });
                }
                print(selectedTime?.format(context));
              },
              child: Text("Pick Time"),
            ),
          ),

          Text("Date: $selectedDate \n Time: $selectedTime"),
        ],
      ),
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
      home: Scaffold(body: Center(child: DateAndTimePicker())),
    );
  }
}

void main() {
  runApp(MyApp());
}
