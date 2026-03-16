/*Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool
 likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one. */
void main() {
  String country = 'Egypt';
  int year = 2026;
  double weight = 55.75;
  bool likecoding = true;
  print(
    'my country is $country ,the current year is $year,my weight is $weight , do you like coding : $likecoding',
  );
  weight = 49.0;
  print(weight);
}
