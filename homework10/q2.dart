void main() {
  Order myOrder = Order();
  foodItem item1 = foodItem(name: 'pizza', price: 100, category: 'fast Food');
  foodItem item2 = foodItem(name: 'burger', price: 150, category: 'fast Food');
  myOrder.addFood(item1);
  myOrder.addFood(item2);
  double finalPrice = myOrder.calculateTotal();
  print('total price : ${finalPrice}');
}

class foodItem {
  String name;
  double price;
  String category;
  foodItem({required this.name, required this.price, required this.category}) {}
}

class Order {
  List<foodItem> Items = [];
  void addFood(foodItem item) {
    Items.add(item);
  }

  double calculateTotal() {
    double total = 0.0;
    for (var item in Items) {
      total = total + item.price;
    }
    return total;
  }
}
