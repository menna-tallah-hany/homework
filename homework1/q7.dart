/*Given this code, identify any errors and explain why they occur: ```dart void main()
{ String name = "Alice"; name = 123; print(name); } `` */
void main() {
  String name = " Alice";
 // name = 123; // error here' this is a string value 'only store text insude it.
  print(name);
}
//name is assigned as a string ,it cannot change.