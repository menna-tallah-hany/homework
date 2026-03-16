import 'dart:io';

void main() {
  print('enter the number');
  int num = int.parse(stdin.readLineSync()!);
  int sum = 0;
  for (var i = 0; i < 10; i++) {
    int result = num * i;
    sum = num * i;
    print('$num*$i=$result');
  }
  print('the sum of all result is :$sum');
}
