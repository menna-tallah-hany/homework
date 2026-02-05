/*Exercise 5:
5. a) Declare two integers a and b.
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b,
 a <= b.
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result.
 */
void main() {
  int a = 20;
  int b = 30;
  print(a >= b); //higher than or equal
  print(a <= b); //lower than or equal
  print(a == b); //equal
  print(a != b); // not equal
  print(a > b); // higher than
  print(a < b); //lower than
  int sum = a + b;
  print(sum == 50);
}
