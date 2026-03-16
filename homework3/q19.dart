/*Question 19
Write a Dart program that converts a list of names to a set of unique values. 
Create a map with
counts of occurrences. Compare lengths and print a message if a specific
 name appears more than
once. */
void main() {
  List<String> names = ['ahmed', 'mohamed', 'ali', 'ahmed', 'menna'];
  Set<String> uniquenames = names.toSet();
  Map<String, int> namecount = {};
  for (var name in names) {
    if (namecount.containsKey(name)) {
      namecount[name] = namecount[name]! + 1;
    } else {
      namecount[name] = 1;
    }
  }
  if (names.length != uniquenames.length) {
    print('there are dublicate names');
  }
  String targetname = 'ali';
  if (namecount[targetname]! > 1) {
    print('$targetname appears more than once');
  }
}
