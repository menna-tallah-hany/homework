void main() {
  Grade grade = Grade();
  grade.score = 40;
  print("score : ${grade._score} , pass : ${grade.isPass}");
  grade.score = 70;
  print("score : ${grade._score} , pass: ${grade.isPass}");
  grade.score = 110;
  print("score : ${grade._score} , pass : ${grade.isPass}");
}

class Grade {
  int? _score ;
  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print("invalid score");
    }
  }

  int get grade => _score!;
  bool get isPass => _score! >= 50;
}
