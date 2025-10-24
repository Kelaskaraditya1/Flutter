import 'package:flutter/material.dart';

class BottomSheet extends StatelessWidget {
  const BottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return ListView(
                  children: [
                    Text(
                      "data",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ListTile(
                      title: Text("Option 1"),
                      leading: Icon(Icons.account_circle),
                    ),
                    ListTile(
                      title: Text("Option 1"),
                      leading: Icon(Icons.account_circle),
                    ),
                    ListTile(
                      title: Text("Option 1"),
                      leading: Icon(Icons.account_circle),
                    ),
                    ListTile(
                      title: Text("Option 1"),
                      leading: Icon(Icons.account_circle),
                    ),
                    ListTile(
                      title: Text("Option 1"),
                      leading: Icon(Icons.account_circle),
                    ),
                  ],
                );
              },
            );
          },
          child: Text("Data"),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: BottomSheet()));
}
