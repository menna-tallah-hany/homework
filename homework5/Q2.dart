import 'dart:io';

void main() {
  print('Enter the number:');
  int? n = int.parse(stdin.readLineSync()!);
  int count = 0;
  for (var i = 1; i < n; i++) {
    if (i % 2 != 0) {
      print(i);
    }
    count += i;
  }
  print(count);
}
