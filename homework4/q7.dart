void main() {
  List<int> scores = [10, 0, 20, 30];
  int total = 0;
  for (var i = 0; i < scores.length; i++) {
    if(scores[i] !=0)
    total += scores[i];
  }
  print('the final total is equal = $total');
}
