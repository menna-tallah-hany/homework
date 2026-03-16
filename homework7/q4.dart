/*only the movies with a rating above 7.
Q4 Create a class Employee with attributes name and salary. Add a method giveRaise(int amount)
that increases the salary. In main(), create an employee, give them a raise, and print the new
salary. */
void main() {
  Employee employee = Employee();
  employee.name = 'Ahmed';
  employee.salary = 9000;
  print(" the newSalary is = ${employee.giveRaise(500)}");
}

class Employee {
  String? name;
  int? salary;
  int giveRaise(int amount) {
    int newSalary = salary! + amount;
    return newSalary;
  }
}
