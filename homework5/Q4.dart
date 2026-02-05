import 'dart:io';

void main() {
  List<int> nums = [];
  for (var i = 0; i < 5; i++) {
    print('enter the number');
    nums.add(int.parse(stdin.readLineSync()!));
  }
  int max = nums[0];
  int min = nums[0];

  for (var i = 0; i < nums.length; i++) {
    if (nums[i] > max) {
      max = nums[i];
    }
    if (min > nums[i]) {
      min = nums[i];
    }
  }
  print('max =$max');
  print('min =$min');
  print(max - min);
}
