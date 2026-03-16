/* Q1 Create a class City with attributes name and population. In main(), create two city objects and
print their details.*/
void main() {
  City city1 = City('Cairo', 22000000);
  City city2 = City('Alexandria', 5500000);
  print(
    "The ${city1.name} City and the number of population in it is ${city1.population} ",
  );
   print(
    "The ${city2.name} City and the number of population in it is ${city2.population} ",
  );

}

class City {
  String name;
  int population;
  City(this.name, this.population) {}
}
