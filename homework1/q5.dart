/*What is the difference between var and dynamic in Dart? Provide an example of
each.
--------------------------------------------------------------------------------
dynamic:it is a data type in dart that allows a variable
to change its type at runtime,which means the same variable
can hold different types of values without causing a compile-time
error.

var:it is a keyword in dart used to declare a variable when
the data type can be inferred automatically by the compiler at compile
time,and once the variable is assigned a value , its type cannot
be changed later.

 */
void main() {
  var age = 12;
 // age = "mohammed"; // cannot be cgange.
  dynamic name = "mutafa";
  name = 40;
}
