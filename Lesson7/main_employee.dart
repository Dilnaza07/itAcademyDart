import 'Employee.dart';

void main() {
  var myList = [
    Employee('Max', 22, 'Tranee', 2000),
    Employee('Alex', 30, 'Manager', 30000),
    Employee('Anna', 27, 'Team Leader', 29000),
    Employee('John', 22, 'Junior', 4000),
  ];

  callExample1(myList);
}

// Full match: Employee{Max, 22, Tranee, 2000}
// Full match: Employee{Alex, 30, Manager, 30000}
// Partial match: Employee{Anna, 27, Team Leader, 29000}
// No match: Employee{John, 22, Junior, 4000}

void callExample1(List<Employee> myList) {
  for (var element in myList) {
    switch (element) {
      case Employee(
              name: 'Max',
              age: 22,
              position: 'Tranee',
              salary: 2000,
            ) ||
            Employee(
              name: 'Alex',
              age: 30,
              position: 'Manager',
              salary: 30000,
            ):
        print('Full match: $element');
      case Employee(
          name: 'Anna',
          salary: 29000,
        ):
        print('Partial match: $element');
      default:
        print('No match: $element');
    }
  }
}

void callExample2(List<Employee> myList) {
  for (var element in myList) {
    switch (element) {
      case Employee(
          salary: > 10000,
        ):
        print('Элитальный сотрудник: $element');
      // какие-то операции над сотрудником
      case _:
        print('Нищеброд : $element');
    }
  }
// Нищеброд : Employee{Max, 22, Tranee, 2000}
// Элитальный сотрудник: Employee{Alex, 30, Manager, 30000}
// Элитальный сотрудник: Employee{Anna, 27, Tea
}
