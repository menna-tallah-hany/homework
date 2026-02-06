/* Q4. Class with Default Attribute Value - Create a class Product with 
attributes name and price. 
Give price a default value of 0. - Create two objects: one with a custom price 
and one with the default price. Print their details*/
void main() {
  Product p1 = Product();
  p1.name = 'bag';
  p1.price = 30;
  Product p2 = Product();
  p2.name = 'lollipop';
  print("${p1.name}, its price is = ${p1.price}");
  print("${p2.name}, its price is = ${p2.price}");

}

class Product {
  String? name;
  double price = 0;
}
