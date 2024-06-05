import 'cat.dart';
import 'employee.dart';

void main() {
  callExample4();
}

void callExample1() {
  List<int> myList = [1, 2, 3];
  if (myList case [int x, int y]) {
    print('2 значения $x и $y');
  } else if (myList case [int x, ..., int y]) {
    print('3 и более значений: $x, y: $y'); // 3 и более значений
  }
  myList = [1, 2];
  if (myList case [int x, int y]) {
    print('2 значения $x и $y'); // 2 значения 1 и 2
  }
}

void callExample2() {
  Map<String, dynamic> myMap = {
    'person1': ['Alex', 22],
    'person2': ['Max', 52],
    'employee': {
      'name': 'John',
      'age': 25,
      'salary': 1000,
      'boss': {
        'name': 'Alex',
        'idEmployees': [1, 2, 3],
      }
    },
  };

  if (myMap case {'person1': [String name, int age]}) {
    print('person1: $name, age: $age'); // person1: Alex, age: 22
  }

  if (myMap case {
  'employee': {
    'name': String empName,
    'age': int empAge,
    'salary': int empsalary,
    'boss': {
      'name': String bossName,
  },
  }
  }) {
    print(
      'employee: $empName, salary: $empsalary, boss: $bossName',
    );
// employee: John, age: 25, salary: 1000, boss: Alex
  }


  if (myMap case {
  'employee': {
  'boss': {
  'idEmployees': List<int> ids
  }
  }
  }
  ) {
    print('ids: $ids'); // ids: [1, 2, 3]
  }


  if (myMap case {'person2': [String name, String age]}) {
    print('person1: $name, age: $age');
  } else {
    print('Ошибка вышла =('); // Ошибка вышла =(
  }
}

void callExample3() {

  dynamic obj = Cat('John', 30);

  if (obj case Cat(:String name)) {
    print('Cat name is $name, ');
  }

  if (obj case Employee(:String name, : int age, : int salary)) {
    print(
        'Employee name is $name, age is $age, salary is $salary'
    );
  } // Employee name is John, age is 30, salary is 1000

  if (obj case Employee(:String name)) {
    print('Employee name is $name'); // Employee name is John
  }

  obj = Cat('Tom', 20);

  if (obj case Employee(:String name, : int age)) {
    print('Employee name is $name, age is $age');
  }

  if (obj case Cat(:String name, : int age)) {
    print('Cat name is $name, age is $age');
// Cat name is Tom, age is 20
  }

}

void callExample4() {

    Object obj = Cat('Tom', 21);
    if (obj case Cat(: int age) when age > 20) {
      print('Cat name is ${obj.name}, age is $age');
    }
    obj = Cat('Tommy', 3);
    if (obj case Cat(: int age) when age > 20) {
      print('Cat name is ${obj.name}, age is $age');
    }
    var list = [5, 3];
    if (list case [int a, int b] when a + b > 10) {
      print('list sum is ${a + b}');
    } else { 

    }
// Cat name is Tom, age is 30
// list sum is 11

}