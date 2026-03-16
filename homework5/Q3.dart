import 'dart:io';

void main() {
  print("Enter the word:");
  String? text = stdin.readLineSync();
  int count = 0;
  print(text!.split('').reversed.join());
  for (var i = 0; i < text.length; i++) {
    if (text[i] == 'a' ||
        text[i] == 'A' ||
        text[i] == 'o' ||
        text[i] == 'O' ||
        text[i] == 'i' ||
        text[i] == 'I' ||
        text[i] == 'i' ||
        text[i] == 'I' ||
        text[i] == 'e' ||
        text[i] == 'E' ||
        text[i] == 'u' ||
        text[i] == 'U') {
      count++;
    }
  }
  print('number of vowels :$count');
}
