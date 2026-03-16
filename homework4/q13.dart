void main() {
  List<String> names = ['Ali', 'Mona', 'Ali', 'Omar', 'Mona'];
  var printedNames = <String>{};
  for (var name in names) {
    int count = names.where((element) => element == name).length;
    if (count > 1 && !printedNames.contains(name)) {
      print(name);
      printedNames.add(name);
    }
  }
}
