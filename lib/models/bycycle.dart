import 'package:dart_application_tutorial/models/vehicle.dart';

class Bicycle extends Vehicle {
  bool hasBasket = false;
  static const int maxSpeed = 120;

  Bicycle({required String name, required int year, required this.hasBasket})
      : super(name, year);

  bool equals(Object other) {
    //identical: kiểm tra 2 object có cùng tham chiếu hay không
    return identical(this, other) ||
        (other is Bicycle &&
            name == other.name &&
            year == other.year &&
            hasBasket == other.hasBasket);
  }

  Bicycle copyWith({String? name, int? year, bool? hasBasket}) {
    return Bicycle(
        name: name ?? this.name,
        year: year ?? this.year,
        hasBasket: hasBasket ?? this.hasBasket);
  }

  @override
  String toString() => '${super.toString()}, hasBasket: $hasBasket';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Bicycle &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          year == other.year &&
          hasBasket == other.hasBasket);
}
