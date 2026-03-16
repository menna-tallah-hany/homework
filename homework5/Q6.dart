import 'dart:io';
import 'dart:math'; // مكتبة مهمة عشان نستخدم الرقم العشوائي

void main() {
  // 1. توليد رقم عشوائي بين 1 و 20
  int randomNum = Random().nextInt(20) + 1;

  print('Guess a number between 1 and 20 (You have 3 tries):');

  bool hasWon = false;

  for (int i = 1; i <= 3; i++) {
    print('Attempt $i: Enter your guess:');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == randomNum) {
      print('True! You guessed it.');
      hasWon = true;
      break;
    } else {
      if (guess < randomNum) {
        print('Try again, the number is higher.');
      } else {
        print('Try again, the number is lower.');
      }
    }
  }

  if (!hasWon) {
    print('Sorry, you failed! The correct number was $randomNum');
  }
}
