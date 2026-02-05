/*Question 17
Write a Dart program that formats a price tag string with a currency. Apply
 string methods such as
toString, padLeft, and length to format and compare the results.*/
void main (){
  double price = 45.5;
  String currency = 'USD';
  
  String formatted = price.toString().padLeft(8, '0');
  String tag = '$formatted $currency';
  
  print('Tag: $tag');
  print('Tag length: ${tag.length}');
}