/*Exercise 9:
9. a) Create List> students with two items, each having name and grade.
b) Print the grade of the second student using index and key.
c) Add both grades and print the average grade as double. */
void main() {
  Map<String, dynamic> student1 = {'name': ' mohamed', 'grade': 90};
  Map<String, dynamic> student2 = {'name': ' ali', 'grade': 70.5};
  List<Map<String, dynamic>> students = [student1, student2];
  print(students[1]['grade']);
  //add both grades and print avg of grade as double
 double avg = students[0]['grade'] + students[1]['grade'];
  ;
  print(avg/2);
}
