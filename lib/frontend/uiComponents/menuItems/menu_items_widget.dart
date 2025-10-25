import 'package:flutter/material.dart';

class MenuItemsWidget extends StatelessWidget {
  const MenuItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu Items widget"),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              print("Value is: $value");
            },
            itemBuilder: (context) {
              // return [       Using Loops
              //   for (int i = 1; i < 6; i++)
              //     PopupMenuItem(child: Text("Item $i"), value: i),
              // ];

              return [
                PopupMenuItem(child: Text("Item 1"), value: 1),
                PopupMenuItem(child: Text("Item 2"), value: 2),
                PopupMenuItem(child: Text("Item 3"), value: 3),
                PopupMenuItem(child: Text("Item 4"), value: 4),
                PopupMenuItem(child: Text("Item 5"), value: 5),
              ];
            },
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(home: MenuItemsWidget(), debugShowCheckedModeBanner: false),
  );
}
