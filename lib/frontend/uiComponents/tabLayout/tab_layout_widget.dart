import 'package:flutter/material.dart';
import 'package:flutter_app/frontend/screens/call_screen.dart';
import 'package:flutter_app/frontend/screens/chat_screen.dart';
import 'package:flutter_app/frontend/screens/status_screen.dart';

class TabLayoutWidget extends StatelessWidget {
  const TabLayoutWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(child: Text("Chat")),
                Tab(child: Text("Status")),
                Tab(child: Text("Call")),
              ],
            ),
            Flexible(
              child: TabBarView(
                children: [
                  Center(child: Text("Chat Section")),
                  Center(child: Text("Status Section")),
                  Center(child: Text("Call Section")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabLayoutMK2 extends StatelessWidget {
  const TabLayoutMK2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 23,
            ),
          ),
          backgroundColor: Colors.green,
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text(
                  "Chat",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Status",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Call",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [ChatScreen(), StatusScreen(), CallScreen()],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: TabLayoutMK2(), debugShowCheckedModeBanner: false));
}
