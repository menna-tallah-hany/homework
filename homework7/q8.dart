/*Q8 Ask the user to input a sentence. Print all the words that appear only once in the sentence. Also
print the total count of unique words. */

import 'dart:io';
import 'dart:typed_data';

void main() {
  print("please enter the sentence");
  String sentence = stdin.readLineSync()!;
  List<String> allWords = sentence.split(' ');
  Map<String, int> wordCounts = {};
  for (var word in allWords) {
    if (word.isEmpty) continue;

    wordCounts[word] = (wordCounts[word] ?? 0) + 1;
  }
  print(" words that appear only once ");
  int uniqueCount = 0;
  wordCounts.forEach((word, count) {
    if (count == 1) {
      print(word);
      uniqueCount++;
    }
  });

  print("the total count of unique words : ${uniqueCount}");
}
