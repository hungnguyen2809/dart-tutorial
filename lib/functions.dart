int add(int a, int b) {
  return a + b;
}

// function with default value, named parameter
double multiply({double a = 0, double b = 1}) {
  return a * b;
}

// function with default value
void sayHelo([String name = 'world']) {
  print('Hello $name');
}

// one line function
String getUrl(String url, {int port = 8080}) => 'https://$url:$port';

String getDate({int? day, int? month, int? year}) {
  // ? = optional value (can be null) = nullable
  // ?? = default value

  String strDay = (day ?? 0) < 10 ? '0$day' : '$day';
  String strMonth = (month ?? 0) < 10 ? '0$month' : '$month';

  return '$strDay/$strMonth/$year';
}

void doSomething({int param1 = 0, int param2 = 0, Function? callback}) {
  // print('param1: $param1');
  // print('param2: $param2');

  callback!(param1 + param2); // ! = not null assertion operator
}
