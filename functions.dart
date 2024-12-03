// Basic function without return type
void greet(String name) {
  print('Hello, $name!');
}

// Function with return type
int add(int a, int b) {
  return a + b;
}

// Function with optional parameters
void printInfo(String name, [int age = 18]) {
  print('Name: $name, Age: $age');
}

// Named parameters
void displayDetails({required String name, int? age}) {
  print('Name: $name, Age: $age');
}

void main() {
  greet('John');
  print('Sum: ${add(10, 20)}');

  // Calling function with optional parameter
  printInfo('Alice');
  printInfo('Bob', 25);

  // Using named parameters
  displayDetails(name: 'Sam', age: 30);
  displayDetails(name: 'Mark');
}
