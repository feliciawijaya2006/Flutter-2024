import 'class.dart';
void main() {
  // Creating a student object
  Student student = Student('John Doe', 12345, 75.5);

  // Displaying student information
  student.displayStudentInfo();

  // Checking if the student passes
  if (student.isPassing()) {
    print('Siswa sudah lulus.');
  } else {
    print('Siswa tidak lulus.');
  }
}
