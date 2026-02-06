/*Q2. Class with Constructor - Create a class Car with attributes brand and year
. - Add a constructor
to set the values when creating the object. - In main(), create two car objects 
with different data and
print their details */
void main() {
  Car myCar1 = Car("BMW", 1916);
  Car myCar2 = Car("MG", 1924);
  print('${myCar1.brand} the manufacturing year is ${myCar1.year}');
  print('${myCar2.brand} the manufacturing  year is ${myCar2.year}');
}

class Car {
  String? brand;
  int? year;
  Car(this. brand, this. year) {}
}
