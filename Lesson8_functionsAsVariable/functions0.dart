

import '../Lesson6_max/employee.dart';

void main() {
  myFunction('Max', 102, 'February', 100, '');




  myFunction2(
    monthName: 'January',
    date: 10,
    name: 'Den',
    salary: 100,
    workPosition: 'Trainee',
  );

  myFunction3();

  myFunction2(name: 'name', date: 1, workPosition: 'lfasdlgfpdsa');

  List<Employee> employees = [
    Employee('Max', 22, 'Team Leader', 500000),
    Employee('Andre', 17, 'Intern', 10000),
    Employee('Nurgazy', 16, 'Intern', 10000),
    Employee('Oleg', 18, 'Junior', 25000),
    Employee('Baatyr', 16, 'Senior', 150000),
    Employee('Akmaral', 17, 'Middle', 70000),
    Employee('Sheerin', 15, 'Junior', 30000),
    Employee('Dilnaza', 23, 'Senior Flutter Developer', 200000),
    Employee('Vadim', 21, 'Middle', 100000),
  ];

  var a1 = 5;
  var a2 = 6;

  print(employees);
  changeList(employees, a1);
  print('employees: $employees, a1: $a1');
  changeList(employees, a2);
  print('employees: $employees, a2: $a2');
}

void changeList(List<Employee> employees, int a) {

  var b = 0;

  employees.removeLast();

  print(b);

  a = 0;

}

void myFunction(
  String name,
  int date,
  String monthName,
  int salary,
  String workPosition,
) {
  print('$name родился $date $monthName!');
}

void myFunction2({
  required String name,
  required int date,
  String? monthName,
  int salary = 0,
  String workPosition = '',
}) {
  print('$name родился $date $monthName!');
}

void myFunction3([
  String name = 'Vova',
  int date = 1,
  String? monthName,
  int salary = 0,
  String workPosition = '',
]) {
  print('$name родился $date $monthName!');
}
