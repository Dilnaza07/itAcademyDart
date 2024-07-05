/*
Просим от пользователя кол-во листов, которые необходимо распечатать.
Каждый лист мы печатаем как событие, то есть внутри Future.
Если лист, который мы распечатываем кратен 5,
то пишем сколько листов уже распечатали в микрозадаче
*/

import 'dart:io';

void main() {
  print('Введите количестсво листов, которые необходимо распечатать:');
  String str = stdin.readLineSync() ?? '';
  int listCount = int.tryParse(str) ?? 0;
  print(listCount);

  printPaperList(listCount);
}

void printPaperList(int count) {
  for (int i = 1; i <= count; i++) {
    Future(() {
      print('Печатаем лист номер $i');
      if (i % 5 == 0) {
        Future.microtask(() => print('Распечатано всего $i листов'));
        return;
      }
    });
    Future.microtask(() => print('микротаска номер $i'));
    print('Отрабатываю $i раз');
  }
}
