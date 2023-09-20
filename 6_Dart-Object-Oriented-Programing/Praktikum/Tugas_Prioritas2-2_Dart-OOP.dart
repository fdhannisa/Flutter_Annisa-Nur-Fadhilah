class Course {
  String title;
  String description;

  Course(this.title, this.description);
}

class Student {
  String name;
  String className;
  List<Course> courses = [];

  Student(this.name, this.className);

  void addCourse(String title, String description) {
    courses.add(Course(title, description));
  }

  void removeCourse(String title) {
    courses.removeWhere((course) => course.title == title);
  }

  void viewCourses() {
    if (courses.isEmpty) {
      print('$name belum memiliki course.');
    } else {
      print('$name memiliki ${courses.length} course:');
      for (var course in courses) {
        print('${course.title}: ${course.description}');
      }
    }
  }
}

void main() {
  Student student = Student('John', 'Kelas A');

  student.addCourse('Matematika', 'Pelajaran Metamatika Dasar');
  student.addCourse('Bahasa Inggris', 'Pelajaran Bahasa Inggris');
  student.addCourse('Sains', 'Pelajaran Sains Alam');

  student.viewCourses();
  student.removeCourse('Bahasa Inggris');
  student.viewCourses();
}
