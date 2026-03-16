/*Q5. Find Second Largest Number - Ask the user to enter 6 numbers in a list.
 - Print the largest
number and the second largest number (without sorting the list) */
import 'dart:io';

void main() {
  List<int> nums = [];
  for (var i = 0; i < 6; i++) {
    print("enter your number");
    int num = int.parse(stdin.readLineSync()!);
    nums.add(num);
  }
  int largest = nums[0];
  int secondLargest = -1;
  for (int num in nums) {
    if (num > largest) {
      secondLargest = largest;
      largest = num;
    } else if (num > secondLargest && num != largest) {
      secondLargest = num;
    }

    print("Largest number: $largest");
    print("Second largest number: $secondLargest");
  }
}
