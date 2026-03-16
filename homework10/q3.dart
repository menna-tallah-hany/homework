void main() {
  int countUniqueVisitors(List<int> visitorsIds) {
    return visitorsIds.toSet().length;
  }

  List<int> id = [101, 102, 103, 104, 103, 104, 109, 105, 107];
  print("numberOfVisitors : ${countUniqueVisitors(id)}");
}
