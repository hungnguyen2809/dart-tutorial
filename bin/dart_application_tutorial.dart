// import 'package:dart_application_tutorial/dart_application_tutorial.dart' as dart_application_tutorial;

import 'package:dart_application_tutorial/functions.dart';

void main(List<String> arguments) {
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
}
