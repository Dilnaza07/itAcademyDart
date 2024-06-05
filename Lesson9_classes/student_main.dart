import 'dart:io';

import 'Student.dart';
import 'StudentsGroup.dart';

void main() {
  Student student1 = new Student('Ivanov', '10/09/24', 2.5);
  Student student2 = new Student('Petrov', '10/09/24', 2.0);
  Student student6 = new Student('Petrov', '10/09/24', 2.2);
  Student student7 = new Student('Petrov', '10/09/24', 3.2);
  Student student3 = new Student('Maslov', '10/09/24', 3.8);
  Student student4 = new Student('Tsareva', '10/09/24', 4.0);
  Student student5 = new Student('Jiliya', '10/09/24', 1.1);

  StudentsGroup studentsGroup = new StudentsGroup();
  studentsGroup.addStudent(student7);
  studentsGroup.addStudent(student1);
  studentsGroup.addStudent(student2);
  studentsGroup.addStudent(student3);
  studentsGroup.addStudent(student4);
  studentsGroup.addStudent(student5);
  studentsGroup.addStudent(student6);

  print(' ');

  var searchStudent = studentsGroup.searchStudent('Petrov');
  if (searchStudent.isNotEmpty) {
    print(searchStudent);
  } else {
    print('Не нашли');
  }

//  print(studentsGroup);

  print('Введите диапазон баллов от');
  String str = stdin.readLineSync() ?? "";
  double grade1 = double.tryParse(str) ?? 0;

  print('Введите диапазон баллов до');
  String str2 = stdin.readLineSync() ?? "";
  double grade2 = double.tryParse(str2) ?? 0;

  var result = studentsGroup.getStudentsByRange(grade1, grade2);
  if (result.isNotEmpty) {
    print(result);
  } else {
    print('Не нашли');
  }
}
