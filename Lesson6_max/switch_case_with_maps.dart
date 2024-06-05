void main() {
  var myList = [
    <int, String>{1: 'Oo', 2: '-_-'},
    <int, int>{1: 1},
    <String, double>{'^_^': 3.14, "(╯'□')╯︵┻━┻": 0.000001},
    <String, Object>{
      'person1': ['Alex', 22],
      'person2': ['Max', 52],
      'employee': {
        'name': 'Max',
        'age': 25,
        'salary': 1000,
        'boss': {
          'name': 'Alex',
          'idEmployees': [1, 2, 3],
        }
      },
    },
  ];

  callExample3(myList);
}

void callExample1(List<Map<Object, Object>> myList) {
  for (var element in myList) {
    switch (element) {
      case {1: 'Oo', 2: '-_-'}: // полное сопоставление
        print('Full match');
      case {"(╯'□')╯︵┻━┻": 0.000001}: // ищем только одну пару "ключ-значение"
        print("(╯'□')╯︵┻━┻");
      case {
          'employee': {'name': var name}
        }: // если есть элементы с такими данными
        print('Hi, $name!');
      default:
        print('No match');
    }
  }
}

void callExample2(List<Map<Object, Object>> myList) {
  for (var element in myList) {
    switch (element) {
      case {1: 'Oo', 2: String smile}:
        print('Full match with $smile');
      case {"(╯'□')╯︵┻━┻": double zero}:
        print("(╯'□')╯︵┻━┻");
      case {
          'employee': {
            'name': String name,
            'boss': {
              'name': String bossName,
              'idEmployees': List<int> idEmployees
            },
          },
        }:
        print('employee: $name, boss: $bossName, idEmployees: $idEmployees');
      default:
        print('No match');
    }
  }
}

void callExample3(List<Map<Object, Object>> myList) {
  for (var element in myList) {
    switch (element) {
      case {1: 'Oo'} || {2: '-_-'}:
        print('Full match');
      case {"(╯'□')╯︵┻━┻": double zero} && {'^_^': 3.14}:
        print("(╯'□')╯︵┻━┻");
      default:
        print('No match');
    }
  }
}
