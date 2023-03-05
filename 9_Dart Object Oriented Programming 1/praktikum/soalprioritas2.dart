class Operator {
  void pertambahan(int a, int b) {
    int x = a + b;
    print(x);
  }

  void pengurangan(int a, int b) {
    int x = a - b;
    print(x);
  }

  void perkalian(int a, int b) {
    int x = a * b;
    print(x);
  }

  void pembagian(int a, int b) {
    double x = a / b;
    print(x);
  }
}

class Course {
  late String judulCourse;
  late String deskripsiCourse;

  Course(String judul, String deskripsi) {
    judulCourse = judul;
    deskripsiCourse = deskripsi;
  }
}

class Student extends Course {
  late String nama;
  late String kelas;
  List<String> course = [];

  Student(super.judul, super.deskripsi);

  void tambahCourse(String judul, String deskripsi) {
    print("Sukses menambahkan");
  }

  void hapusCourse(int urutanCourse) {
    // ignore: list_remove_unrelated_type
    course.remove(urutanCourse + 1);
  }

  void lihatCourse() {
    if (course.isEmpty) {
      print("Course kosong");
    } else {
      print("Kelas yang anda ambil ${course[1]}");
    }
  }
}

void main() {
  var operator = Operator();
  var student = Student("Flutter Alterra Academy",
      "Bootcamp bahasa pemrograman Flutter Kampus Merdeka Batch 4 x Alterra Academy");

  operator.pertambahan(10, 5);
  operator.pengurangan(5, 4);
  operator.perkalian(10, 5);
  operator.pembagian(50, 10);

  student.lihatCourse();

  student.tambahCourse("Bahasa Indonesia", "Tambah course 1");

  student.lihatCourse();

  student.hapusCourse(0);
}
