import 'dart:io';

main() {
  // task1();
  task3();
}

void task1() {
  print('Введите строку: ');

  var str = stdin.readLineSync() ?? "";

  if (str.length < 15 && str.length > 0 && str[0] == 'W') {
    print(str);
  } else {
    print('Pattern no matched');
  }
}

void task2() {
  print('Введите строку: ');

  String str = stdin.readLineSync() ?? '';
  var stringList = [...str.split(' ')];
  Object intList = [
    for (String string in stringList) int.tryParse(string) ?? 0
  ];

  if (intList case [int a, ...List<int> c, int b]
  when intList.length > 0 && intList.length < 15 && a == 7 && b == 15) {
    print(c);
    print(intList);
  } else {
    print('Pattern no matched');
  }
}

void task4() {
  print('Введите строку: ');
  String str = stdin.readLineSync() ?? '';

  if (str[0] == 'T' && str[str.length - 1] == '!') {
    print(str);
  } else {
    print('Pattern no matched');
  }
  ;
}

void task5() {
  print('Введите числа: ');
  String str = stdin.readLineSync() ?? '';
  var StringList = [...str.split(' ')];
  var intList = [for (String string in StringList) int.tryParse(string) ?? 0];

  int sum = 0;
  for (int i = 0; i < intList.length; i++) {
    sum = sum + intList[i];
  }
  print('sum: $sum');

  if (intList case [int a, ..., int b] when a == b && sum > 40) {
    print(intList);
  } else {
    print('Pattern no matched');
  }
}

void task3() {
  Map myMap = {
    1: 'Alex', 999:'Max', 666:'Dima'};

  //if(myMap case {}when myMap.length >5  && ){}
}
