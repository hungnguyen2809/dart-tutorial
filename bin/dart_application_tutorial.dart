// import 'package:dart_application_tutorial/dart_application_tutorial.dart' as dart_application_tutorial;
import 'package:dart_application_tutorial/functions.dart';
import 'package:dart_application_tutorial/models/bycycle.dart';
import 'package:dart_application_tutorial/models/car.dart';
import 'package:dart_application_tutorial/repositories/movie_repository.dart';
// import 'package:dart_application_tutorial/models/vehicle.dart';

void main(List<String> arguments) async {
  // print('Hello world: ${dart_application_tutorial.calculate()}!');
  // print('Hello: ${dart_application_tutorial.generateString()}!');

  var firstName = 'Hung';
  String lastName = 'Nguyen';
  print('$firstName $lastName');

  // String fullName = "$firstName $lastName";
  // print('Hello: $fullName');

  // String poem = '''
  //   I love Dart
  //   Dart is awesome
  // ''';
  // print(poem);

  // if (poem.isEmpty) {
  //   print('Poem is empty');
  // } else {
  //   print('Poem is not empty');
  // }

  // bool isValid = fullName.isNotEmpty && poem.isNotEmpty;
  // print('isValid: $isValid');

  // print('2 + 3 = ${add(2, 3)}');
  // print('2 * 3 = ${multiply(a: 2, b: 3)}');
  // print('3 * 2 = ${multiply(b: 3, a: 2)}');
  // print('${multiply(a: 2)}');

  // sayHelo('Hung');
  // sayHelo();

  // print(getUrl('google.com'));
  // print(getUrl('google.com', port: 8081));

  // print(getDate(day: 1, month: 1, year: 2021));
  // print(getDate(day: 1, month: 1));

  doSomething(
      param1: 1,
      param2: 2,
      callback: (int total) {
        print('Callback => total: $total');
      });

  final List<String> carBrands = [
    'BMW',
    'Mercedes',
    'Audi',
    'Toyota',
    'Honda',
    'Kia',
    'Mazda',
    'Tesla',
    'Ford',
  ];

  // carBrands = ['BMW', 'Mercedes']; // can't reassign value to final variable
  // carBrands[0] =
  //     'BMW 2'; // can change value of final variable, but can't reassign value to final variable

  // const List<String> carBrands2 = [
  //   'BMW',
  //   'Mercedes',
  //   'Audi',
  //   'Toyota',
  //   'Honda',
  //   'Kia',
  //   'Mazda',
  // ];
  // carBrands2[0] = 'BMW 2'; // can't change value of const variable

  // print(carBrands);
  print('There are ${carBrands.length} car brands');

  // for (var i = 0; i < carBrands.length; i++) {
  //   print(carBrands[i]);
  // }

  // carBrands.forEach((carBrand) {
  //   print(carBrand);
  // });

  // for (var carBrand in carBrands) {
  //   print(carBrand);
  // }

  // carBrands.shuffle(); // shuffle list
  // carBrands.asMap().forEach((index, carBrand) {
  //   print('$index: $carBrand');
  // });

  // carBrands.add('Toyota 2'); // add new item to list (at the end)
  // print(carBrands);

  // carBrands.insert(0, 'BMW 2'); // add new item to list (at the 0)
  // print(carBrands);

  // carBrands.remove('BMW'); // remove item from list
  // carBrands.removeAt(0); // remove item at index 0 from list
  // carBrands.removeWhere((carBrand) => carBrand == 'BMW'); // remove item from list
  // carBrands.removeRange(0, 2); // remove item from list
  // carBrands.clear(); // remove all items from list

  // List<String> carBrandsClone = [...carBrands]; // clone list
  // carBrandsClone[0] = 'BMW 2';
  // print('carBrandsClone: $carBrandsClone');

  // print('sort ascending');
  // carBrands.sort((a, b) => a.compareTo(b)); // sort list ascending
  // print(carBrands);

  // print('sort descending');
  // carBrands.sort((a, b) => b.compareTo(a)); // sort list descending
  // print(carBrands);

  // Vehicle bmw = Vehicle('BMW', 2021);
  // print(bmw.toString());

  Car bmw = Car('BMW', 2020, 2.0, 200);
  // bmw.name = 'BMW 2';
  // bmw.year = 2022;
  print(bmw);

  // bmw.describe();
  // print('Age: ${bmw.age}');

  // bmw.age = 5; // cannot change property unless you add setter method
  // print('Year: ${bmw.year}');

  Bicycle bicycle1 = Bicycle(name: 'Bicycle', year: 2021, hasBasket: true);
  print(bicycle1);

  Bicycle bicycle2 = Bicycle(name: 'Bicycle', year: 2021, hasBasket: true);
  print(bicycle2);

  // if (bicycle1.equals(bicycle2)) {
  //   print('bicycle1 equals bicycle2 has the same content');
  // } else {
  //   print('bicycle1 not equals bicycle2');
  // }
  if (bicycle1 == bicycle2) {
    print('bicycle1 equals bicycle2 has the same content');
  } else {
    print('bicycle1 not equals bicycle2');
  }

  Bicycle bicycle3 = bicycle1;
  if (identical(bicycle3, bicycle1)) {
    print('bicycle3 and bicycle1 have the same reference');
  }

  // print(bicycle1.hashCode);
  // print(bicycle2.hashCode);
  // print(bicycle3.hashCode);

  Bicycle bicycle4 = bicycle1.copyWith(name: 'Bicycle 4', year: 2019);
  print(bicycle4);

  print('maxSpeed: ${Bicycle.maxSpeed}');

  List<Car> cars = [
    Car('BMW', 2020, 2.0, 100),
    Car('Mercedes', 2021, 2.0, 200),
    Car('Audi', 2022, 2.0, 90),
    Car('Toyota', 2023, 2.0, 300),
    Car('Honda', 2024, 2.0, 90),
    Car('Kia', 2025, 2.0, 200),
    Car('Mazda', 2026, 2.0, 78),
    Car('Tesla', 2027, 2.0, 200),
    Car('Ford', 2028, 2.0, 150),
  ];

  cars.insert(0, Car('Lexus', 2020, 2.0, 200));

  // print(cars);
  cars.asMap().forEach((index, value) {
    print('$index: $value');
  });

  print('\n');

  List<Car> filterCars =
      cars.where((car) => car.year > 2022 && car.year <= 2025).toList();

  filterCars.asMap().forEach((index, value) {
    print('$index: $value');
  });

  print('\n');
  print('sortedCars by horsePower');
  List<Car> sortedCars = [...cars];
  sortedCars.sort((a, b) => a.horsePower.compareTo(b.horsePower));
  sortedCars.asMap().forEach((index, value) {
    print('$index: $value');
  });

  print('\n');
  List<String> carNames = cars.map((car) => car.name).toList();
  print(carNames);

  print('\n');
  final Map<String, Object> user = {
    'name': 'Hùng',
    'age': 18,
    'email': 'hungnguyen99.nvh@gmail.com'
  };
  print(user);
  user['name'] = 'Hung Nguyen'; // can not change value when const
  print(user);

/**
  print('\n');
  print('begin task1');
  fetchMovies().then((movies) {
    print('finished task1');
    print(movies);
  });

  print('begin task2');
  fetchMovies().then((movies) {
    print('finished task2');
    print(movies);
  });
 */

  print('\n');
  print('begin task1');
  final movie1 = await fetchMovies();
  print('finished task1');
  print('movie1: $movie1');

  print('begin task2');
  final movie2 = await fetchMovies();
  print('finished task2');
  print('movie2: $movie2');
}
