import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Logout"),
                  icon: Icon(Icons.logout),
                  content: Text("Are you sure, you want to logout?"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Yes"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("No"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            "Alert Dialog",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightBlue,
            foregroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: AlertDialogWidget()));
}
