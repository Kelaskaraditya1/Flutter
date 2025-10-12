import 'dart:io';

class Calculator{

  int? _x;
  int? _y;

  Calculator(
      this._x,
      this._y){
    print("x= $_x, y=$_y");
  }

  Calculator.Default(){
    print("Default Constructor!!");
}

  set setX(int x){
    this._x=x;
  }

  set setY(int y){
    this._y=y;
  }

  int? get getX => this._x;
  int? get getY => this._y;


  static int? addition(Calculator calculator){
    return (calculator._x! + calculator._y!);
  }

  static int? subtraction(Calculator calculator){
    return (calculator._x! - calculator._y!);
  }

  static int? multiplication(Calculator calculator){
    return (calculator._x! * calculator._y!);
  }

 static double? ratio(Calculator calculator){
    return (calculator._x! / calculator._y!);
  }

  static void compute({required Calculator calculator}){

    print("Addition: ${addition(calculator)}");
    print("Subtraction: ${subtraction(calculator)}");
    print("Product: ${multiplication(calculator)}");
    print("Ratio: ${ratio(calculator)}");

  }

}

void main(){

  print("Enter x and y");
  int? x = int.tryParse(stdin.readLineSync()?? '');

  int? y = int.tryParse(stdin.readLineSync()?? '');

  Calculator calculator = Calculator(x, y);

  Calculator.compute(calculator: calculator);

  Calculator calculator1 = Calculator.Default();
  calculator1.setX=x!;
  calculator1.setY=y!;

  Calculator.compute(calculator: calculator1);


}