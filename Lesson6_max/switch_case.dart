void main() {
  callExample4WithLambdas();
}

void callExample1() {
  var command = 'open'; // проверяемое значение
  switch (command) {
    case 'close': // если значение в command == 'close'
    case 'open': // если значение в command == 'open'
      print('work');
    default: // если не подошел ни один вариант
      print('default');
  }
}

void callExample2() {
  var command = 'prepare';
  switch (command) {
    prepare:
    case 'prepare':
      print('prepare'); // 2 <- prepare
    case 'close':
      print('closed');
    case 'open':
      print('open'); // 1 <- open
      continue prepare;
    default:
      print('default');
  }
}

void callExample3() {
  var a = 10;
  var b = switch (a) {
    2 => 5 + a,
    3 => 4 + a,
    _ => 10 - a, // значение по умолчанию 100
  };
  print(b); // 0

}

void callExample4WithCases() {
  var myList = [1, 4, 5, 2, 33, 45, 90];
  for (var element in myList) {
    switch (element) {
      case 2 || 3 || 5:
        print('a ($element) is 2, 3, or 5');
      case >= 30 && <= 40:
        print('a ($element) is between 30 and 40');
      default:
        print('Default value: $element');
    }
  }
}

void callExample4WithLambdas() {
  var myList = [1, 4, 5, 2, 33, 45, 90];
  var newList = <int>[];
  for (var element in myList) {
    newList.add(
        switch (element) {
          == 2 || == 3 || == 5 => element + 1,
          >= 30 && <= 40 => element * 2,
          == 1 => element + 3,
          < 50 => element - 5,
          _ => element,
        });

    print(newList);
  }
}
