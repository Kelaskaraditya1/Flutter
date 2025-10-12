import 'dart:io';

class Polygon{

  int? _dimensions;

  Polygon(this._dimensions){
    print("Polygon Constructor");
  }

  Polygon.Default(){
    print("Polygon Default Constructor");
  }

  void set setDimensions(int dimensions){
    this._dimensions=dimensions;
  }

  int? get getDimension => this._dimensions;

  static int? area(int dimensions)=> dimensions! * dimensions!;
}

class Triangle extends Polygon{

  int? _height;
  int? _base;

  Triangle(
      this._base,
      this._height,
      int dimension
      ):super(dimension){
    print("Triangle Constructor");
  }

  void set setHeight(int height){
    this._height=height;
  }

  void set setBase(int base){
    this._base=base;
  }

  int? get getBase => this._base;

  int? get getHeight => this._height;

  static double? area(int height, int base) => 0.5*height! * base!;

}

class EquilateralTriangle extends Triangle{

  int? _side;

  EquilateralTriangle(
      this._side,
      int? dimensions,
      int? height,
      int? base
      ):super(base, height, dimensions!){
    print("EquiLateral Triangle Constructor");
  }

  void set setSide(int side){
    this._side=side;
  }

  int? get getSide=> this._side;

  static double? area(int side) => (0.433)* side * side;

}

void main(){

  print("Enter the number of dimensions");
  int? dimensions = int.tryParse(stdin.readLineSync()?? '');

  print("Enter the Height and Base of the Triangle");
  int? height = int.tryParse(stdin.readLineSync()?? '');
  int? base = int.tryParse(stdin.readLineSync()?? '');

  Triangle triangle = Triangle(base, height, dimensions!);
  print("The Area of Triangle is: ${Triangle.area(triangle.getHeight!,triangle.getBase!)} sqcm");

  print("Enter the side of EquiLateral Triangle");
  int? side = int.tryParse(stdin.readLineSync()?? '');

  EquilateralTriangle equilateralTriangle = EquilateralTriangle(side, dimensions, height, base);
  print("The Area of Circle is: ${EquilateralTriangle.area(side!)} sqcm");

  print("No of Dimensions: ${equilateralTriangle.getDimension} and ${triangle.getDimension}");





}