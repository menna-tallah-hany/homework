import 'dart:io';

void main() {
  print('Enter a short sentence:');
  String sentence = stdin.readLineSync()!;
  List<String> words = sentence.split(' ');
  int wordCount = words.length;

  String noSpaces = sentence.replaceAll(' ', '');
  int charCount = noSpaces.length;

  print('Number of words: $wordCount');
  print('Number of characters (excluding spaces): $charCount');
}
