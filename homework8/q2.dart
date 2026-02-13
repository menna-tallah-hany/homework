void main() {
  Car car1 = Car();
  Car car2 = Car();
  car1.brand = "Toyota";
  car1.year = 1937;
  car2.brand = "";
  car2.year = 1884;
  print("car1 : ${car1._brand} , year: ${car1._year}");

}

class Car {
  String? _brand;
  int? _year;
  set brand(String value) {
    if (value.isEmpty) {
      print("Invalid brand : name cannot be empty");
    } else {
      _brand = value;
    }
  }

  set year(int year) {
    if (year < 1886) {
      print("Invalid year : $year is before the first car (1886) ");
    } else {
      _year = year;
    }
  }

  String get brand => _brand ?? "unkown";
  int get year => _year ?? 0;
}
