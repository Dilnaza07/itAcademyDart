import 'employee.dart';

void main() {
  var myList = [
    Employee('Max', 22, 'Trainee', 2000),
    Employee('Alex', 30, 'Manager', 30000),
    Employee('Anna', 27, 'Team Leader', 29000),
    Employee('John', 22, 'Junior', 4000),
  ];

  callExample7();
}

void callExample1(List<Employee> myList) {
  for (var element in myList) {
    switch (element) {
      case Employee(
              name: 'Max',
              age: 22,
              position: 'Trainee',
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
          salary: 29000,
        ):
        print('Partial match: $element');
      default:
        print('No match: $element');
    }
  }
}

void callExample2(List<Employee> myList) {
  List<Employee> listFrom10kTo20k = [];
  for (var element in myList) {
    switch (element) {
      case Employee(
          salary: > 10000 && <= 30000,
        ):
        listFrom10kTo20k.add(element);
        print('Элитальный сотрудник: $element');
// какие-то операции над сотрудником
      case _:
        print('Нищеброд : $element');
    }
  }

  print(listFrom10kTo20k);
}

void callExample3(List<Employee> myList) {
  for (var element in myList) {
    switch (element) {
      case Employee(salary: > 10000, age: < 30):
        print('Элитальный сотрудник: $element');
// какие-то операции над сотрудником
      case _:
        print('Что ты тут забыл? : $element');
    }
  }
}

void callExample4() {
  var myList = [
    'Мама мыла раму',
    'Привет!',
    'Как дела?',
    'Синхрофазатрон',
    [1, 2, 3, 4, 5],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
  ];
  for (var element in myList) {
    switch (element) {
      case String(length: > 10):
        print('Строка > 10 символов: $element');
      case List(length: <= 10):
        print('Список длиной <= 10 : $element');
      case _:
        print('Элемент с не нужной длинной: $element');
    }
  }
}

void callExample5() {

  var myList = [
    Employee('Maxim', 22, 'Tranee', 2000),
    Employee('Alexandr', 30, 'Manager', 30000),
    Employee('Anna', 27, 'Team Leader', 29000),
    Employee('John', 22, 'Junior', 4000),
  ];

  for (var element in myList) {
    switch (element) {
      case Employee(
      name: String(length: >= 5),
      ):
        print('Full match: $element');
      default:
        print('No match: $element');
    }
  }

}

void callExample6() {

  var myList = [
    Employee('Maxim', 22, 'Tranee', 2000),
    Employee('Alexandr', 30, 'Manager', 30000),
    Employee('Anna', 27, 'Team Leader', 29000),
    Employee('John', 22, 'Junior', 4000),
  ];

  for (var element in myList) {
    switch (element) {
      case Employee(
      name: var name,
      ) when name.startsWith('A') && name.length >= 5:
        print('Name match: $element');
      case Employee(
      salary: var salary,
      age: var age,
      ) when salary / age >= 200:
        print('Salary match: $element');
    }
  }
}

void callExample7() {

  var myList = [
    'Мама мыла раму',
    'Привет!',
    'Привет! Как дела?',
    'Синхрофазатрон',
    [1, 2, 3, 4, 5],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12],
    (10, 20),
    (30, 15),
  ];



  for (var element in myList) {

    switch (element) {

      case String str
      when (str.contains('мы') && str.length > 10) ||
          str.startsWith('При'):
        print('String : $element');

      case List<int> list
      when list.reduce(
              (value, element) => value + element) > 55:
        print('List : $element');

      case (int first, int second) when first > second:
        print('Record : $element');
    }

  }

}