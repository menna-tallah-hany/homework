void main() {
  List<int> numbers = [3, 7, 9, 12, 4, 6];
  print('the numbers are divisible by 3 is equal =');
  for (var element in numbers) {
    if (element % 3 == 0) {
      print(element);
    }
  }
}
