class Employee{

  String? _empId;
  String? _name;
  String? _email;
  String? _contactNo;
  String? _username;
  String? _password;
  static int? _count;

  Employee(
      this._empId,  // Private fields start with '_' private String name => String? _name
      this._name,
      this._email,
      this._contactNo,
      this._username,
      this._password
      ){
   print("Parameterised Constructor \n");
  }

  // Employee(String? empId,String? name,String? email,String? contactNo,String? username,String? password){
  //
  //   this._empId=empId;
  //   this._name=name;
  //   this._email=email;
  //   this._contactNo=contactNo;
  //   this._username=username;
  //   this._password=password;
  // }

  /*
  *  for Creating a default Constructor when a parameterised constructor exist, there cannot be constructor with the same name
  * so we have to add another name ahead of the name of the constructor.
  *
  *     Parameterized Constructor:
  *
  *   Employee(this._parameter1, this._parameter2, this._parameter3, this._parameter4){
  *    // Implementation
  *     }
  *
  *     Default/No Parameterised Constructor:
  *
  *    Employee.{siffixName}(){
  *     ....
  *     }
  *
  *     for eg: Employee.default(){
  *     .... Implementation
  *     }
  *
  * */

  Employee.empty(){  // For creating a default constructor
    print("Default Constructor \n");
  }

  String? get getPassword => _password;

  set setPassword(String value) {
    _password = value;
  }

  String? get getUsername => _username;

  set setUsername(String value) {
    _username = value;
  }

  String? get getContactNo => _contactNo;

  set setContactNo(String value) {
    _contactNo = value;
  }

  String? get getEmail => _email;

  set setEmail(String value) {
    _email = value;
  }

  String? get getName => _name;

  set setName(String value) {
    _name = value;
  }

  String? get getEmpId => _empId;

  set setEmpId(String value) {
    _empId = value;
  }

  @override
  String toString() {
    return 'Employee{_empId: $_empId, _name: $_name, _email: $_email, _contactNo: $_contactNo, _username: $_username, _password: $_password}';
  }
  
  static void printDetails(Employee employee){
    print("Employee Id: ${employee.getEmpId} ");
    print("Name: ${employee.getName}");
    print("Email: ${employee.getEmail}");
    print("Contact Number: ${employee.getContactNo}");
    print("Username: ${employee.getUsername}");
    print("Password: ${employee.getPassword}");
  }


}

void main(){
  
  Employee employee1 = Employee(
      "2021FHCO042"
      , "Aditya"
      , "kelaskaraditya1@gmail.com"
      , "8591059220"
      , "kelaskaraditya1"
      , "Aditya@1234");

  Employee.printDetails(employee1);

  Employee employee2 = Employee.empty();
  employee2.setEmpId="2021FHCO054";
  employee2.setName="Sandesh";
  employee2.setEmpId="sandesh1@gmail.com";
  employee2.setContactNo="8591059220";
  employee2.setUsername="kelaskaraditya1";
  employee2.setPassword="Aditya@1234";

  Employee.printDetails(employee2);

}