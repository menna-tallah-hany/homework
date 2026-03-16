/*Exercise 8:
8. a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
b) Print book['title'], update price, and add a new key 'author'.
c) Print all keys, values, and check if 'pages' exists as a key. */
void main() {
  Map<String, dynamic> books = {
    'title': 'dart guide',
    'pages': 120,
    'price': 19.99,
  };
  print(books['title']);
  books['price'] = (25);
  books['author'] = ("mohammed");
  print(books.keys);
  print(books.values);
  print(books.containsKey("pages"));
}
