/*Q2 Create a class Temperature with an attribute celsius. Add a method to
Fahrenheit() that returns
the temperature in Fahrenheit. In main(), create an object and print the 
converted value. */
void main() {
  Temperature temperature = Temperature();
 print(temperature.toFehrenheit(50));
}

class Temperature {
  double? celsius;

  double toFehrenheit(double celsius) {
    double converted = (celsius * 9 / 5) + 32;
    return converted;
  }
}
