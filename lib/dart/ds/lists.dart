import 'dart:io';

void main(){

  // Deceleration of a static List.
  List<String> list = ["Aditya","Sandesh","Jivesh","Parth","Varad","Rohan"];

  // Declaration of Dynamic List.
  List<String> list1 = [];

  // Iteration:
  // for(int i=0;i<list.length;i++)
  //   print("${list[i]} ");

  /* for searching in a list.
  we have to use the where function.
  where((obj)=> condition)  basically we are streaming on the list and we get a object which points to the current element and we have to apply some condition.
  it returns a itreable of items and it we use .toList() than it converts it to a list and returns.
   */
  //
  // var result = list.where((name)=> name=="Aditya" || name=="Sandesh")
  // .toList();
  // print(result);

  // print("Enter the no of elements");
  // int? no = int.tryParse(stdin.readLineSync()?? '');
  //
  // for(int i=0;i<no!;i++){
  //   print("Enter the element");
  //   list1.add((stdin.readLineSync()?? ''));
  // }
  //
  // print("Enter the key");
  // String? key = stdin.readLineSync();
  //
  // print(list1.where((value)=> value==key)
  // .toList());


  // Functions:

  /*
   1) for appending element in the list: list.add(value)
   2) for adding a list to another list: list1.addAll(list2)
   3) for inserting element at a position: list.insert(index,object)
   4) for inserting a list of element after a index: list2.insertAt(index,list2)
   5) for Removing a value from list: list.remove(value)
   6) for removing a value at a given index: list.removeAt(index)
   7) for getting the length of the list: list.length()
   8) for reversing the list: list.reverse()
   9) whether list is empty or not: list.isEmpty or list.isNotEmpty

   */


  // For Each Loop:

  // for(var value in list)
  //   stdout.write("$value ");


  list.forEach((value)=>print(value));




}