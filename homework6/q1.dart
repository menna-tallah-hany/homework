/*Q1. Class with Method - Create a class Calculator with two attributes: num1 
and num2. - Add a
method addNumbers() that prints the sum of the two numbers. - Create an object
 in main() and call
the method */
class Calculator {
  int? num1;
  int? num2;
  void addNumbers() {
    if (num1 != null && num2 != null) {
      int sum = num1! + num2!;
      print("the sum of two numbers is = $sum ");
    }
  }
}

void main() {
  Calculator sum = Calculator();
  sum.num1 = 40;
  sum.num2 = 14;
  sum.addNumbers();
}
