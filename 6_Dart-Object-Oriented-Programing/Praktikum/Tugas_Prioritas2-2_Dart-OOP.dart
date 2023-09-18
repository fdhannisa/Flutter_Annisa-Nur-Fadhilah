import 'dart:io';

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
//Menambahkan course ke daftar student
  void addCourse(String title, String description) {
    courses.add(Course(title, description));
  }

// Menghapus course dari daftar student
  void removeCourse(String title) {
    courses.removeWhere((course) => course.title == title);
  }

// Menampilkan semua course yang dimiliki student
  void viewCourses() {
    if (courses.isEmpty) {
      print('$name belum memiliki course.');
    } else {
      print('$name memiliki ${courses.length} course:');
      for (var course in courses) {
        print(' - ${course.title}: ${course.description}');
      }
    }
  }
}

void main() {
  // Membuat objek student
  Student student = Student('John', 'Kelas A');

  // menambahkan beberapa course
  student.addCourse('Matematika', 'Pelajaran Metamatika Dasar');
  student.addCourse('Bahasa Inggris', 'Pelajaran Bahasa Inggris');
  student.addCourse('Sains', 'Pelajaran Sains Alam');

  //Melihat semua course yang dimiliki student
  student.viewCourses();

  //Menghapus salah satu course
  student.removeCourse('Bahasa Inggris');

  // Melihat semua course setelah menghapus
  student.viewCourses();
}
