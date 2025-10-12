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

class Circle extends Polygon{

  int? _radius;

  Circle(
      this._radius,
      int? dimensions
      ):super(dimensions){
    print("Circle Constructor");
  }

  void set setRadius(int radius){
    this._radius=radius;
  }

  int? get getRadius => this._radius;

  static double? area(int? radius) => (22/7)* radius! * radius!;
}


void main(){

  print("Enter the number of dimensions");
  int? dimensions = int.tryParse(stdin.readLineSync()?? '');

  print("Enter the Height and Base of the Triangle");
  int? height = int.tryParse(stdin.readLineSync()?? '');
  int? base = int.tryParse(stdin.readLineSync()?? '');

  Triangle triangle = Triangle(base, height, dimensions!);
  print("The Area of Triangle is: ${Triangle.area(triangle.getHeight!,triangle.getBase!)} sqcm");

  print("Enter the radius of the Circle");
  int? radius = int.tryParse(stdin.readLineSync()?? '');

  Circle circle = Circle(radius, dimensions);
  print("The Area of Circle is: ${Circle.area(circle.getRadius!)} sqcm");

  print("No of Dimensions: ${circle.getDimension} and ${triangle.getDimension}");



}