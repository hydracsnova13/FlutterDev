import 'dart:io';

void main() {
  // Console input
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync(); // Reads input from user
  print('Hello, $name!');

  // Writing to a file (make sure to add permissions in your IDE)
  File('output.txt').writeAsStringSync('Hello Dart!');

  // Reading from a file
  String content = File('output.txt').readAsStringSync();
  print('File content: $content');
}
