import 'dart:io';

main() {
  print('Введите номер месяца');
  String str = stdin.readLineSync() ?? "";
  int num = int.tryParse(str) ?? 0;

  var result = getMonth(num);
  print('Количество дней в месяце $result');
}

int getMonth(int num) {
  var dayOfMonthCount = 0;
  switch (num) {
    case 2:
      dayOfMonthCount = 28;
    case 4 || 6 || 9 || 11:
      dayOfMonthCount = 30;
    case 1 || 3 || 5 || 7 || 8 || 10 || 12:
      dayOfMonthCount = 31;
    default:
      dayOfMonthCount = 0;
  }
  return dayOfMonthCount;
}

/*
18. Пользователь вводит с клавиатуры число целое число, представляющее собой номер месяца.
Напишите функция, которая возвращает количество дней в месяце.
Если введен не корректный номер месяца, то возвращается ноль.
Полученный результат выведите в терминал.*/
