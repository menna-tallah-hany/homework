void main() {
  double price = 180.0;
  bool isStudent = true;
  double finalprice = price;
  if (isStudent && price >= 150) {
    finalprice -= 15;
  }
  print('the final price = $finalprice \$');
}
