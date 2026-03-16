/*Question 13
Write a Dart program that calculates a grade (A, B, C, or D) based on a mark. 
Then use a switch
statement to print a message for each grade. */

void main() {
  int mark = 95;
  String grade;
  if (mark >= 90 && mark <= 100) {
    grade = 'A';
  } else if (mark >= 75 && mark < 90) {
    grade = 'B';
  } else if (mark > 65 && mark < 75) {
    grade = 'C';
  } else if (mark >= 55) {
    grade = 'D';
  } else {
    grade = 'F';
  }
  switch (grade) {
    case 'A':
      print('excellent !');
      break;
    case 'B':
      print('very good!');
      break;
    case 'C':
      print('good!');
      break;
    case 'D':
      print('stisfactory');
      break;
    default:
      print('failed');
  }
  
}
