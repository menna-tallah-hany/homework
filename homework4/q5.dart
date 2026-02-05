void main() {
  String text = 'EGP 12.20';
  String cleanedText = text.replaceAll('EGP ', ' ');
  double price = double.parse(cleanedText);
  print(price);
}
