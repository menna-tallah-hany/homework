import 'dart:io';

void main() {
  List<int> numbers = [];
  print("enter the number of list");
  int n = int.parse(stdin.readLineSync()!);
  print("enter the number");
  for (var i = 0; i < n; i++) {
    int number = int.parse(stdin.readLineSync()!);
    numbers.add(number);
  }
  print(numbers);
  int max = numbers[0];
  int min = numbers[0];
  int sum = 0;
  double avg = 0;
  int sumEven = 0;
  int sumOdd = 0;
  int difference;
  for (var i = 0; i < numbers.length; i++) {
    if (max < numbers[i]) max = numbers[i];
    if (min > numbers[i]) min = numbers[i];
    sum += numbers[i];
    avg = sum / numbers.length;
    if (avg < numbers[i]) print(numbers[i]);
  }
  difference = max - min;
  print("the largest number is = $max");
  print("the smallest number is = $min");
  print("the difference is = $difference");
  print("avg is = $avg");
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 == 0) sumEven++;
    if (numbers[i] % 2 != 0) sumOdd++;
  }
  print("numbers of even is $sumEven ");
  print("numbers of odd is $sumOdd ");
}
