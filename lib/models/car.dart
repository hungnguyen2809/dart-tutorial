import 'package:dart_application_tutorial/models/vehicle.dart';

class Car extends Vehicle {
  double engineSize = 0;
  double horsePower = 0;

  Car(String name, int year, this.engineSize, this.horsePower)
      : super(name, year);

  void describe() {
    print(
        'This car run withs Name: $name, Year: $year, Engine size: $engineSize, Horse power: $horsePower');
  }

  int get age {
    return DateTime.now().year - year;
  }

  set age(int value) {
    year = DateTime.now().year - value;
  }

  @override
  String toString() {
    return '${super.toString()} Engine size: $engineSize, Horse power: $horsePower';
  }
}
