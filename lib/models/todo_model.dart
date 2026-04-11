class ToDo {
  String id;
  String todoText;
  DateTime time;
  bool isDone;
  ToDo({
    required this.id,
    required this.time,
    required this.todoText,
    this.isDone = false,
  });
  static List<ToDo> todoList() {
    return [];
  }
}
