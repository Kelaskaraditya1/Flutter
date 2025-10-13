import 'dart:io';

import 'package:flutter_app/dart/exceptionHandling/Exceptions.dart';

class Calculator{

  static int? addition(int? a, int? b) {

    if(a!>100000 || b!>100000)
      throw MaxRangeException();
    else if(a!<0 || b!<0)
      throw new NegativeNumberElement();
    else
      return a+b;

  }

  static int? subtraction(int? a, int? b){

    if(a!>100000 || b!>100000)
      throw MaxRangeException();
    else if(a!<0 || b!<0)
      throw new NegativeNumberElement();
    else
      return a-b;

  }

  static int? multiplication(int? a,int? b){
    if(a!>100000 || b!>100000)
      throw MaxRangeException();
    else if(a!<0 || b!<0)
      throw new NegativeNumberElement();
    else
      return a*b;

  }
  
  static double? ratio(int? a,int? b){
    if(a!>1000000 || b!>1000000)
      throw MaxRangeException();
    else if(a!<0 || b!<0)
      throw NegativeNumberElement();
    else if(b==0)
      throw ZeroDenominator();
    else
      return a/b;
  }
}

void main(){

  try{
    
    print("Enter a");
    int? a = int.tryParse(stdin.readLineSync()?? '');

    print("Enter b");
    int? b = int.tryParse(stdin.readLineSync()?? '');

    print("Addition: ${Calculator.addition(a, b)}");
    print("Subtraction: ${Calculator.subtraction(a, b)}");
    print("Multiplication: ${Calculator.multiplication(a, b)}");
    print("Ratio: ${Calculator.ratio(a, b)}");


  }on NegativeNumberElement {
    print("Enter a value greater than 0");
  }on MaxRangeException{
    print("Enter a value less than 100000 ");
  }on ZeroDenominator{
    print("Denominator should not be zero");
  }

  print("");
  print("");

  try{
    print("Enter a");
    int? a = int.tryParse(stdin.readLineSync()?? '');

    print("Enter b");
    int? b = int.tryParse(stdin.readLineSync()?? '');

    print("Addition: ${Calculator.addition(a, b)}");
    print("Subtraction: ${Calculator.subtraction(a, b)}");
    print("Multiplication: ${Calculator.multiplication(a, b)}");
    print("Ratio: ${Calculator.ratio(a, b)}");
  }catch(exception,stackTrace){
    if(exception is CustomException)
      print("Exception: ${exception.errorMessage()}");
    else
      print("Exception: ${exception}");
    print("Stack Trace: $stackTrace");
  }

}