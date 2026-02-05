/* Question 14
Write a Dart program that works with a nullable list of integers. If the list
 is null or empty, print 'No
scores'. Otherwise, calculate and print the sum of the first and last elements 
and check if it is
greater than or equal to 40.*/
void main() {
  List<int>? numbres = [10, 6, 8, 40];

  
  if (numbres == null || numbres.isEmpty) {
    print('no numbers');
  } else {
    int first = numbres.first;
    int last = numbres.last;
    int sum = first + last;
    print('sum of first and last elements : $sum');
    if (sum >= 40) {
      print('sum is greater than or equal 40 ');
    } else {
      print('sum is less than 40');
    }
  }
  
}
