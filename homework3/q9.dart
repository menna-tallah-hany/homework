/* Question 9
Write a Dart program that removes duplicate items from a list using a Set. 
Compare the unique
count with the original list length and print a message if duplicates were
 removed.*/
void main() {
  List<int> numbers = [4, 5, 8, 7, 5, 4, 9];
  Set<int> nums = numbers.toSet();
  if (numbers.length == nums.length) {
    print('duplicates werenot remove');
  }else{
     print('duplicates were remove'); 
  }
}
