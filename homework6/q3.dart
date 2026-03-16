/*Q3. Modify Attributes - Create a class Person with attributes name and age. -
 Create an object and
set its initial values using a constructor. - Then change the age of the object
 and print the updated
details. */
void main() {
  Person ali = Person('ali',19);
  ali.age = 20;
  print('updated name :${ali.name} , updated age :${ali.age}');
}

class Person {
  String? name;
  int? age;
  Person(String n,int a) {
   this.name=n;
    this.age=a;
    
  }
}
