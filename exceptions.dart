void main() {
  try {
    int result = 10 ~/ 0; // Throws an exception
    print('Result: $result');
  } catch (e) {
    print('Error: Division by zero.');
  } finally {
    print('This block is always executed.');
  }

  // Using custom exception
  try {
    validateAge(17);
  } catch (e) {
    print(e);
  }
}

// Custom exception
void validateAge(int age) {
  if (age < 18) {
    throw Exception('Age must be 18 or older.');
  }
  print('Age is valid.');
}
