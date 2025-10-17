import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Employee {
  String? _empId;
  String? _name;
  String? _contactNo;
  String? _email;
  String? _username;
  String? _password;
  String? _profilePicUrl;

  Employee(
    this._empId,
    this._name,
    this._contactNo,
    this._email,
    this._username,
    this._password,
    this._profilePicUrl,
  );

  Employee.empty();

  String? get password => this._password;

  set password(String value) {
    this._password = value;
  }

  String? get username => this._username;

  set username(String value) {
    this._username = value;
  }

  String? get email => this._email;

  set email(String value) {
    this._email = value;
  }

  String? get contactNo => this._contactNo;

  set contactNo(String value) {
    this._contactNo = value;
  }

  String? get name => this._name;

  set name(String value) {
    this._name = value;
  }

  String? get empId => this._empId;

  set empId(String value) {
    this._empId = value;
  }

  String? get profilePicUrl => this._profilePicUrl;

  set profilePicUrl(String value) {
    this._profilePicUrl = value;
  }
}

List<Employee> getData() {
  List<Employee> employeeList = [
    Employee(
      "EMP001",
      "Aditya Kelaskar",
      "9876543210",
      "aditya.kelaskar@example.com",
      "adityaK",
      "password123",
      "https://randomuser.me/api/portraits/men/1.jpg",
    ),
    Employee(
      "EMP002",
      "Riya Sharma",
      "9823456789",
      "riya.sharma@example.com",
      "riyaS",
      "riya@123",
      "https://randomuser.me/api/portraits/women/2.jpg",
    ),
    Employee(
      "EMP003",
      "Aman Verma",
      "9812345678",
      "aman.verma@example.com",
      "amanV",
      "aman@pass",
      "https://randomuser.me/api/portraits/men/3.jpg",
    ),
    Employee(
      "EMP004",
      "Sneha Patil",
      "9765432109",
      "sneha.patil@example.com",
      "snehaP",
      "sneha@456",
      "https://randomuser.me/api/portraits/women/4.jpg",
    ),
    Employee(
      "EMP005",
      "Rohit Mehta",
      "9856789012",
      "rohit.mehta@example.com",
      "rohitM",
      "rohit@789",
      "https://randomuser.me/api/portraits/men/5.jpg",
    ),
    Employee(
      "EMP006",
      "Priya Deshmukh",
      "9834567890",
      "priya.deshmukh@example.com",
      "priyaD",
      "priya@321",
      "https://randomuser.me/api/portraits/women/6.jpg",
    ),
    Employee(
      "EMP007",
      "Karan Gupta",
      "9865432101",
      "karan.gupta@example.com",
      "karanG",
      "karan@654",
      "https://randomuser.me/api/portraits/men/7.jpg",
    ),
    Employee(
      "EMP008",
      "Anjali Nair",
      "9843210987",
      "anjali.nair@example.com",
      "anjaliN",
      "anjali@987",
      "https://randomuser.me/api/portraits/women/8.jpg",
    ),
    Employee(
      "EMP009",
      "Vikram Singh",
      "9887654321",
      "vikram.singh@example.com",
      "vikramS",
      "vikram@111",
      "https://randomuser.me/api/portraits/men/9.jpg",
    ),
    Employee(
      "EMP010",
      "Neha Joshi",
      "9801234567",
      "neha.joshi@example.com",
      "nehaJ",
      "neha@222",
      "https://randomuser.me/api/portraits/women/10.jpg",
    ),
  ];

  return employeeList;
}

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: SizedBox(
          height: 200,
          child: ListView(
            /* if vertical List than every row will take the entire width, else will take the entire height.
          * */
            padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            // to decide whether horizontal or vertical Scrolling.
            children: [
              Container(
                width: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 1",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 2",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 3",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 4",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 5",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 6",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 6",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 7",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 8",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 9",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
              Container(
                height: 100,
                color: Colors.blue,
                margin: EdgeInsets.all(5),
                child: Text(
                  "Container 10",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListViewWidgetMark2 extends StatefulWidget {
  const ListViewWidgetMark2({super.key});

  @override
  State<ListViewWidgetMark2> createState() => _ListViewWidgetMark2State();
}

class _ListViewWidgetMark2State extends State<ListViewWidgetMark2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View"),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            for (int i = 1; i <= 10; i++)
              Container(
                height: 100,
                color: Colors.blue,
                child: Text(i.toString()),
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
              ),
          ],
        ),
      ),
    );
  }
}

class ListViewMark3 extends StatefulWidget {
  const ListViewMark3({super.key});

  @override
  State<ListViewMark3> createState() => _ListViewMark3State();
}

class _ListViewMark3State extends State<ListViewMark3> {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("List View Mark 2"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: list.map((item) {
            return Container(
              height: 120,
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                item.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              color: Colors.blue,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class EmployeeList extends StatefulWidget {
  const EmployeeList({super.key});

  @override
  State<EmployeeList> createState() => _EmployeeListState();
}

class _EmployeeListState extends State<EmployeeList> {
  List<Employee> employees = getData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employee List"),
          backgroundColor: Colors.deepOrange,
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: employees.map((employee) {
            return ListTile(
              title: Text(employee.name!),
              subtitle: Text(employee.name!),
              leading: CircleAvatar(
                foregroundImage: NetworkImage(employee.profilePicUrl!),
                radius: 40,
              ),
              trailing: Icon(Icons.message),
            );
          }).toList(),
        ),
      ),
    );
  }
}

void main() {
  runApp(EmployeeList());
}
