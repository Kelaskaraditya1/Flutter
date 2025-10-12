
import 'dart:convert';
import 'dart:io';

class Polygon{

  int? _dimensions;

  Polygon(
      this._dimensions
      ){
    print("Dimension Constructor");
  }

  Polygon.Default();

  void set setDimension(int dimension){
    this._dimensions=dimension;
  }

  int? get getDimensions => this._dimensions;

  void printDimensions() => print("The polygon has $_dimensions");

  static int? area(int? dimension)=>dimension!*dimension!;

}

class Triangle extends Polygon{

  int? _height;
  int? _base;

  Triangle(
      this._base, this._height, int? dimensions
      ) : super(dimensions){
    print("Triangle Constructor");
  }

  void set setHeight(int height){
    this._height=height;
  }

  void set setBase(int? base){
    this._base=base;
  }

  int? get getHeight => this._height;

  int? get getBase => this._base;

  static int? areaTriangle(int base, int height)=> height!*base!;

}


void main(){

  print("Enter the Dimensions of the Polygon");
  int? dimensions = int.tryParse(stdin.readLineSync()?? '');

  print("Enter the Base and Height");
  int? base = int.tryParse(stdin.readLineSync()?? '');
  int? height = int.tryParse(stdin.readLineSync()?? '');


  Triangle triangle = Triangle(base, height, dimensions);

  print("Area of Polygon: ${Polygon.area(triangle.getDimensions)}");

  print("Area of Triangle: ${Triangle.areaTriangle(triangle.getBase!,triangle.getHeight!)}");

  print("Number of Dimensions: ${triangle.getDimensions}");

}