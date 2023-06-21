abstract class Vehicle {
  String name;
  int year;

// Vehicle();
  Vehicle(this.name, this.year);

  @override
  String toString() => 'Name: $name, Year: $year';
}
