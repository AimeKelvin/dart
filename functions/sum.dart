import 'dart:io';

int sum(int a, int b) {
  return a + b;
}

void main() {
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int result = sum(num1, num2);

  print("The sum of $num1 and $num2 is $result");
}
