// ex2_19.dart
void main() {
  var a = -10;
  if ((a > 5 && a % 2 == 0) || a < 0) {
    print('Значение удовлетворяет условиям');
    // Значение удовлетворяет условиям
  } else {
    print('Значение не удовлетворяет условиям');
  }

//if case

  // ex2_20.dart
  List<int> myList = [1, 2, 3];
  if (myList case [int x, int y]) {
    print('2 значения $x и $y');
  } else if (myList case [int x, ..., int y]) {
    print('3 и более значений'); // 3 и более значений
  }
  myList = [1, 2];
  if (myList case [int x, int y]) {
    print('2 значения $x и $y'); // 2 значения 1 и 2
  }

  // ex2_21.dart
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
    if (myMap
        case {
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
        'employee: $empName, age: $empAge, salary: $empsalary, boss:$bossName',
      );
      // employee: John, age: 25, salary: 1000, boss: Alex
    }
    if (myMap case {'employee': {'boss': {'idEmployees': List<int> ids}}}) {
      print('ids: $ids'); // ids: [1, 2, 3]
    }
    if (myMap case {'person2': [String name, String age]}) {
      print('person1: $name, age: $age');
    } else {
      print('Ошибка вышла =('); // Ошибка вышла =(
    }
  }

