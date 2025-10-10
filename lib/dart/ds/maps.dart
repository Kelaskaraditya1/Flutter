main(){

  /*
  * Maps Store data in Key-Value format.
  * We can Specify the type of Key value pair.
  * If no type for key is being passed than by default it is String, and value can be of any type.
  *
  * 1) Static Map:
  * Map map ={
  *   "Key1":value1,
  *   "Key2":value2
  *   }
  *
  * 2) Dynamic Map
  * Map<Type1,Type2> map = {}
  * */

  // Static Map

  Map<int,String> map = {
    1:"Aditya",
    2:"Sandesh",
    3:"Parth",
    4:"Varad",
    5:"Jivesh",
    6:"Rohan"
  };

  // print(map);

  // Dynamic Map

  Map<String,String> employee={};

  employee["empId"]="2021FHCO042";
  employee["name"]="Aditya";
  employee["email"]="kelaskaraditya1@gmail.com";
  employee["username"]="kelaskaraditya1";
  employee["password"]="Aditya@1234";

  print(employee);

  // Collecting Keys and Values as a List.

  var keys= employee.keys.toList();
  var values = employee.values.toList();

  // Iteration:

  for(String value in employee.keys){
    if(value=="name")
      print(employee[value]);
  }


}