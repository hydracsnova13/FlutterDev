void main() {
  // For loop
  for (int i = 1; i <= 5; i++) {
    print('Counting: $i');
  }

  // While loop
  int count = 0;
  while (count < 5) {
    print('While loop count: $count');
    count++;
  }

  // Do-while loop (executes at least once)
  int num = 10;
  do {
    print('Do-while count: $num');
    num++;
  } while (num < 15);
}
