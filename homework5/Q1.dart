import 'dart:io';

void main() {
  print('Enter first number');
  int? num1 = int.parse(stdin.readLineSync()!);
  print('Enter second number');
  int? num2 = int.parse(stdin.readLineSync()!);
  print('Enter third number');
  int? num3 = int.parse(stdin.readLineSync()!);
  int sum = num1 + num2 + num3;
  double avg = sum / 3;
  print(avg);
  if (avg > 50) {
    print("true");
  } else {
    print("false");
  }
}
