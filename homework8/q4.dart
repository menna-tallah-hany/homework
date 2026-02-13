void main() {
  Product product = Product();
  product.name = "laptop";
  product.price = 2500.8;
  print("product: ${product.name}");
  print("original price :${product.price} ");
  print("price after discount ${product.discount} ");
}

class Product {
  String _name = "";
  double _price = 0.0;
  set name(String value) {
    if (value.trim().isNotEmpty) {
      _name = value;
    } else {
      print("error: name cannot be empty");
    }
  }

  set price(double value) {
    if (value >= 0) {
      _price = value;
    } else {
      print("price cannot be negative");
    }
  }

  String get name => _name;
  double get price => _price;
  double get discount => _price - (_price * 10 / 100);
}
