/* Interfaces and Abstraction
*
* In Dart interface is also just like a normal class, just we have to use implements while inheriting.
* Interface provides complete abstraction.
* If there is class A (Non Static) and it has some concrete methods, than the class implementing it has to redefine those methods with another implementations.
* for performing Multiple Inheritance in C we have to use implements from A and B and not extends.
* 
* */

import 'dart:io';

abstract class Calculator{

  int? addition(int? a,int? b );

  int? subtraction(int? a,int? b);

  int? multiplication(int? a, int? b);

  double? ratio(int? a,int? b);  
}

class Camera{
  
  void clickPhoto() => print("Photo Clicked!!");
  
  void takeVideo() => print("Video Captured!!");
  
}

class MobilePhone implements Calculator,Camera{
  @override
  int? addition(int? a, int? b) => a! + b!;

  @override
  void clickPhoto() => print("Photo saved to Gallery!!");

  @override
  int? multiplication(int? a, int? b) => a! * b!;

  @override
  double? ratio(int? a, int? b) => a! / b!;

  @override
  int? subtraction(int? a, int? b) => a! - b!;

  @override
  void takeVideo() => print("Video saved to Gallery!");
  
}

void main(){

  MobilePhone mobilePhone = MobilePhone();

  mobilePhone.clickPhoto();
  mobilePhone.takeVideo();

  int? a = int.tryParse(stdin.readLineSync()?? '');
  int? b = int.tryParse(stdin.readLineSync()?? '');

  print("Addition: ${mobilePhone.addition(a, b)}");
  print("Subtraction: ${mobilePhone.subtraction(a, b)}");
  print("Multiplication: ${mobilePhone.multiplication(a, b)}");
  print("Ratio: ${mobilePhone .ratio(a, b)}");


}