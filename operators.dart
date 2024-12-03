void main() {
  int a = 10, b = 20;

  // Arithmetic operators
  print('Sum: ${a + b}');
  print('Difference: ${b - a}');
  print('Product: ${a * b}');
  print('Quotient: ${b / a}');
  print('Remainder: ${b % a}');

  // Comparison operators
  print('Is a equal to b? ${a == b}');
  print('Is a not equal to b? ${a != b}');
  print('Is a greater than b? ${a > b}');
  print('Is a less than or equal to b? ${a <= b}');

  // Logical operators
  bool isTrue = true;
  bool isFalse = false;

  print('AND: ${isTrue && isFalse}');
  print('OR: ${isTrue || isFalse}');
  print('NOT: ${!isTrue}');
}
