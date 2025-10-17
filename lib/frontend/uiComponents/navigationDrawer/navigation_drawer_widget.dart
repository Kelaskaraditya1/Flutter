import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  var drawerState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: drawerState,
      appBar: AppBar(
        title: Text("Navigation Drawer"),
        backgroundColor: Colors.orange,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            drawerState.currentState!.openDrawer();
          },
          icon: Icon(Icons.menu, color: Colors.white),
        ),
      ),
      drawer: Drawer(
        child: Stack(
          children: [
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: FlutterLogo(size: 150),
                ),
                SizedBox(height: 20),
                Text(
                  "Radient Dermat",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),
                ListTile(
                  onTap: () {
                    print("Profile Page");
                  },
                  title: Text(
                    "Profile",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  leading: Icon(Icons.account_circle),
                ),
                ListTile(
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  leading: Icon(Icons.home),
                ),
                ListTile(
                  title: Text(
                    "Setting",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  leading: Icon(Icons.settings),
                ),
                ListTile(
                  title: Text(
                    "About",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  leading: Icon(Icons.info),
                ),
                ListTile(
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  leading: Icon(Icons.help),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 10),
              child: ListTile(
                title: Text(
                  "Logout",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                leading: Icon(Icons.logout),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(home: NavigationDrawerWidget()));
}
