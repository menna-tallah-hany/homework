/*Q7 Ask the user for a number (e.g., 9875). Keep summing its digits until the
 result is a single digit.
Print the final single-digit result.(Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1= 2)*/
import 'dart:io';

void main() {
  print("please enter a number");
  int num = int.parse(stdin.readLineSync()!);
  while (num >= 10) {
    int sum = 0;
    while (num > 0) {
      sum += num % 10;
      num = num ~/ 10;
    }
    num = sum;
  }
  print("the final single-digit result is : $num");
}
