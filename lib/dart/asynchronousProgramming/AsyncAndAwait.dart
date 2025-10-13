/*
* While fetching data from any source it can take infinite time and because of it the ui thread gets blocked.
* that is ui is dependent until the data is not fetched, data will not be rendered until the data is not fetched.
* so for this we use Asynchronous Programming, so that things can be processed in a parallel manner, decreasing the dependency.
*
* */


/* Async and Await
*
*  Function Definition:
*
* type name async(){
*     await Future.delayed(Duration(seconds: value)); // await means any kind of data fetching is happening and it will take time
*     implementation...
* }
*
* The Problem here is that every thing after await is on hold and will not get executed.
*
* */

//   Future<void> fetchData() async {
//
//   print("Fetching Data");
//   await Future.delayed(Duration(seconds: 3)).then((){
//    The task defined inside this block happens Asynchronously and the code written after this block is executed first.
//   });
//   print("Data fetched Successfully!!");
//
// }

import 'dart:async';

// <-------------------------------------------------------------------------------For Asynchronous Communication----------------------------------------------------------------------------------------------------------->

// void fetchData() {
//
//   getData().then((value){
//
//     // This happens Asynchronously.
//     print("Data Fetched: $value");
//   });
//
//   //  This is printed first.
//   print("other Operations Completed...");
//
//
// }
//
//
//
// Future<Map<String,Object>> getData() async {
//   print("Fetching Data from database...");
//
//   await Future.delayed(Duration(seconds: 1));
//
//   var employee = {
//     "empId": "2021FHCO042",
//     "name": "Aditya Kelaskar",
//     "email": "kelaskaraditya1@gmail.com",
//     "username": "kelaskaraditya1",
//     "password": "Aditya@1234"
//   };
//
//   return employee;
//
// }
//

// <-------------------------------------------------------------------------------For Synchronous Communication----------------------------------------------------------------------------------------------------------->

Future<Map<String,Object>> getData() async{

 await Future.delayed(Duration(seconds: 1));

    var employee = {
    "empId": "2021FHCO042",
    "name": "Aditya Kelaskar",
    "email": "kelaskaraditya1@gmail.com",
    "username": "kelaskaraditya1",
    "password": "Aditya@1234"
  };

  return employee;


}

void fetchData() async{
  
  print("Fetching data...");
  var response = await getData();
  print(" Data Fetched: $response ");

}

void main(){

    fetchData();

}