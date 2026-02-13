void main() {
  Book book = Book();
  book.name = "animals";
  book._pages = 120;
  print("the title of the book is ${book._title}");
  print("reading time is ${book.readingTime}");
}

class Book {
  String _title = "";
  int _pages = 0;
  set name(String value) {
    if (value.isEmpty) {
      print("invalid value");
    } else {
      _title = value;
    }
  }

  set number(int value) {
    if (value <= 0) {
      print("Error");
    } else {
      _pages = value;
    }
  }

  String get title => _title;
  int get readingTime => _pages * 2;
  // the number 2 minutes is the readingTime per page ;
}
