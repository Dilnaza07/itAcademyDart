import 'Employee.dart';

main() {
  var myList = [
    Employee('Max', 22, 'Team Leader', 500000),
    Employee('Andre', 17, 'Intern', 10000),
    Employee('Nurgazy', 16, 'Intern', 10000),
    Employee('Oleg', 18, 'Junior', 25000),
    Employee('Baatyr', 16, 'Senior', 150000),
    Employee('Akmaral', 17, 'Middle', 70000),
    Employee('Sheerin', 15, 'Junior', 30000),
    Employee('Dilnaza', 23, 'Senior Flutter Developer', 200000),
    Employee('Vadim', 21, 'Middle', 100000)
  ];

  callExample1(myList);
  callExample2(myList);
}

void callExample1(List<Employee> myList) {
  List<Employee> employeesToFire = [];

  for (int i = 0; i < myList.length; i++) {
    if (myList[i].position != 'Team Leader' &&
        myList[i].position != 'Senior' &&
        myList[i].position != 'Senior Flutter Developer') {
      if (myList[i].salary * myList[i].age > 1000000) {
        employeesToFire.add(myList[i]);
      }
    } else if (myList[i].position == 'Senior' ||
        myList[i].position == 'Senior Flutter Developer') {
      if (myList[i].salary > 180000) {
        employeesToFire.add(myList[i]);
      }
    }
  }

  for (var employee in employeesToFire) {
    print('Увольняем $employee');
  }
}
/*Task #1: Нужно найти кого увольняем.
Увольняем людей, если зарплата умноженная на возраст больше чем 1_000_000
если только сотрудник не является тим лидом или сеньором,
если же сотрудник является сеньором и его зарплата больше 180 тысяч, тоже увольняем!*/

void callExample2(List<Employee> myList) {
  List<Employee> employeesToFire2 = [];

  for (var employee in myList) {
    switch (employee) {
      case Employee(position: var position)
          when position != 'Team Leader' &&
              position != 'Senior' &&
              position != 'Senior Flutter Developer' &&
              employee.age * employee.salary > 1000000:
        employeesToFire2.add(employee);

      case Employee(position: var position)
          when position == 'Senior' || position == 'Senior Flutter Developer' && employee.salary > 180000:
        employeesToFire2.add(employee);
    }
  }

  for (var employee in employeesToFire2) {
    print('Увольняем $employee');
  }
}
