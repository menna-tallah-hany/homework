/*Q5 Create a class Course with attributes title and duration (default = 3 months). Create two
courses: one with custom duration and one with the default. Print both. */
void main() {
  Course course1 = Course('English', '6 monthes');
  Course course2 = Course('Arbic');
  print(
    "i have an ${course1.title} course and its duration ${course1.duration}",
  );
  print(
    "i have an ${course2.title} course and its duration ${course2.duration}",
  );
}

class Course {
  String title;
  String duration;
  Course(this.title,[ this.duration='3 monthes']) {}
}
