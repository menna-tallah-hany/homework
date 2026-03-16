/*Question 16
Write a Dart program that evaluates three integer variables with different 
logical and comparison
expressions. Print the results, then decide whether to print 'Rule passed' or 
'Rule failed' based on
one of the expressions. */
void main() {
  int num1 = 20;
  int num2 = 16;
  int num3 = 13;
  bool result = true;
  if (num3 > num2 && num1 > num3 || num3 != num1 && num2 > num3) {
    print(result);
  }
  print('Rule Passed');
}
