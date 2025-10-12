import 'dart:io';

abstract class Calculator{

  int? addition(int? a,int? b );

  int? subtraction(int? a,int? b);

  int? multiplication(int? a, int? b);

  double? ratio(int? a,int? b);

}

class ScientificCalculator extends Calculator{
  @override
  int? addition(int? a, int? b)  => (a! + b!);

  @override
  int? multiplication(int? a, int? b)   => (a! * b!);

  @override
  double? ratio(int? a, int? b)   => (a! / b!);

  @override
  int? subtraction(int? a, int? b)  => (a! - b!);

}

void main(){

  print("Enter the value of a and b");

  int? a = int.tryParse(stdin.readLineSync()?? '');
  int? b = int.tryParse(stdin.readLineSync()?? '');

  Calculator calculator = ScientificCalculator();

  print("Addition: ${calculator.addition(a, b)}");
  print("Subtraction: ${calculator.subtraction(a, b)}");
  print("Multiplication: ${calculator.multiplication(a, b)}");
  print("Ratio: ${calculator.ratio(a, b)}");



}