void main() {
  int age = 25;
  if (age >= 18) {
    print('You are an adult.');
  } else {
    print('You are not an adult.');
  }

  // Using else if
  if (age < 13) {
    print('You are a child.');
  } else if (age < 18) {
    print('You are a teenager.');
  } else {
    print('You are an adult.');
  }

  // Switch-case
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Average');
      break;
    default:
      print('Invalid grade');
  }
}
