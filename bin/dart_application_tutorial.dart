// import 'package:dart_application_tutorial/dart_application_tutorial.dart' as dart_application_tutorial;

import 'package:dart_application_tutorial/functions.dart';

void main(List<String> arguments) {
  // print('Hello world: ${dart_application_tutorial.calculate()}!');
  // print('Hello: ${dart_application_tutorial.generateString()}!');

  var firstName = 'Hung';
  String lastName = 'Nguyen';
  print('$firstName $lastName');

  String fullName = "$firstName $lastName";
  print('Hello: $fullName');

  String poem = '''
    I love Dart
    Dart is awesome
  ''';
  print(poem);

  if (poem.isEmpty) {
    print('Poem is empty');
  } else {
    print('Poem is not empty');
  }

  bool isValid = fullName.isNotEmpty && poem.isNotEmpty;
  print('isValid: $isValid');

  print('2 + 3 = ${add(2, 3)}');
}
