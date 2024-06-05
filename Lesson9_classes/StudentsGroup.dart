import 'dart:io';

import 'Student.dart';

class StudentsGroup {
  // Student student;
  // Map <String, Student> students = {};
  List<Student> listOfStudents = [];

  void addStudent(Student student) {
    if (student.GPA >= 2.0 && student.GPA <= 4.0) {
      print('студент $student добавлен в список студентов ');
      listOfStudents.add(student);
    } else {
      print('Студенту $student отказано в добавлении в группу студентов');
    }
  }

  List<Student> searchStudent(String surname) {
    List<Student> searchStudentList = [];
    for (int i = 0; i < listOfStudents.length; i++) {
      if (listOfStudents[i].surname == surname) {
        searchStudentList.add(listOfStudents[i]);
      }
    }
    if (searchStudentList.length > 1) {
      List<Student> doubleStudents = [];
      var min = searchStudentList[0].GPA;
      for (int i = 1; i< searchStudentList.length-1; i++) {

        if (searchStudentList[i].GPA>min) {
          min = searchStudentList[i].GPA;
        }
      }
    }
    return searchStudentList;
  }

  List<Student> getStudentsByRange(double grade1, double grade2) {
    List<Student> listOfStudentsGrade = [];

    for (int i = 0; i < listOfStudents.length; i++) {
      if (listOfStudents[i].GPA >= grade1 && listOfStudents[i].GPA <= grade2) {
        listOfStudentsGrade.add(listOfStudents[i]);
      }
    }
    return listOfStudentsGrade;
  }

  @override
  String toString() {
    return 'Группа студентов: $listOfStudents}';
  }
}
