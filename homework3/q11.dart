/*Question 11
Write a Dart program that applies discounts to a price. Use nested if/else to 
apply different
discounts based on whether the user is a student, has a coupon, or if the price 
is above a threshold.
Print the final price. */
void main() {
  double price = 150.0;
  bool isStudent = true;
  bool hasCoupon = false;
  double finalPrice = price;
  if (price > 100) {
    if (isStudent) {
      finalPrice *= 0.8; // 20% off
    } else if (hasCoupon) {
      finalPrice *= 0.9; // 10% off
    } else {
      finalPrice *= 0.95; // 5% off
    }
  }
  print('Final Price: $finalPrice');
}
