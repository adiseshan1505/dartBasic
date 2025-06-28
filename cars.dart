import 'dart:io';

void main(){
  print("Enter name of the car:- ");
  String? name=stdin.readLineSync();
  print("Enter manufacturer of the car:- ");
  String? m=stdin.readLineSync();
  Cars c=Cars();
  c.printSeats();
  c.carName=name!;
  c.manufacturer=m!;
  print(c.carName);
  print(c.manufacturer);
  c.accelerate();
}


class Vehicle{
  String carName="";
  String manufacturer="";
  int speed=int.parse(stdin.readLineSync()!);

  void accelerate(){
    speed+=10;
    print("Car is accelerating now.. with a speed of $speed");
  }
}

class Cars implements Vehicle{
  @override
  String carName="";

  @override
  String manufacturer="";

  @override
  int speed=15;

  @override
  void accelerate(){
    print("Initial speed is $speed");
    speed+=10;
    print("Now accelerating with $speed");
  }
  void printSeats(){
    print("Enter number of seats:- ");
    int seats=int.parse(stdin.readLineSync()!);
    print("Number of seats is $seats");
  }
}