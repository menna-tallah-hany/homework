import 'dart:io';

void main() {
  print('enter the number');
  String input = stdin.readLineSync()!;
  int sum = 0;
  int maxDigit = 0;
  for (var i = 0; i < input.length; i++) {
    int digit = int.parse(input[i]);
    sum += digit;

    if (digit > maxDigit) {
      maxDigit = digit;
    }
  }
  print('Sum of digits: $sum');
  print('Largest digit: $maxDigit');
}
