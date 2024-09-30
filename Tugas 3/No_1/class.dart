class Student {
  // Attributes
  String name;
  int studentID;
  double grade;

  // Constructor
  Student(this.name, this.studentID, this.grade);

  // Method to display student information
  void displayStudentInfo() {
    print('Name: $name');
    print('Student ID: $studentID');
    print('Grade: $grade');
  }

  // Method to check if the student passes (grade >= 70)
  bool isPassing() {
    return grade >= 70;
  }
}
