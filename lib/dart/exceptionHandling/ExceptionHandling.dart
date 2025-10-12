import 'dart:io';

/*
* Exception Handling can be done with Try-Catch Block, Try-On Block, By printing the entre Stack Trace, and by using finally Block
* On Clause: means when we know certainly that which exception will occur than we have to use on Clause*/

void main(){

  print("Enter the value of a and b");

  int? a = int.tryParse(stdin.readLineSync()?? '');
  int? b = int.tryParse(stdin.readLineSync()?? '');

  // Using On Clause.

  // try{
  //   int result= a! ~/ b!;
  //   print("The ratio of $a and $b is: $result");
  // } on IntegerDivisionByZeroException{
  //   print("Denominator cannot be 0");
  // }

  // Using simple Try-Catch Block

  // try{
  //   int result = a! ~/ b!;
  //     print("The ratio of $a and $b is: ${result}");
  // }catch(e){
  //   print(e);
  // }

  // Printing the Entire Stack Trace.

  // try{
  //     int result = a! ~/ b!;
  //       print("The ratio of $a and $b is: ${result}");
  // }catch(e,s){
  //   print("Exception Occured: $e");
  //   print("Stack Trace: $s");
  // }

//    Using Finally Block.

try{
    int result = a! ~/ b!;
      print("The ratio of $a and $b is: ${result}");
}catch(exception,stackTrace){
  
  print("Exception: $exception");
  print("Stack Trace: $stackTrace");
  
} finally{
  print("I am the best!!");
}





}