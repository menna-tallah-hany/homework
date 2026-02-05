void main() {
  int number = 6;
  int fact = 1;
  for (var i = 1; i <= number; i++) {
    fact *= i;
  }
  print('factorial of 6! = $fact');
}
