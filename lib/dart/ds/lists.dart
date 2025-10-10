void main(){

  // Deceleration of a static List.
  List<String> list = ["Aditya","Sandesh","Jivesh","Parth","Varad","Rohan"];

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


  if(list.contains("Aditya"))
    print("Present");
  else
    print("Absent");




}