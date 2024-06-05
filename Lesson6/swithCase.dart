import 'dart:io';

main() {
  print('Введите месяц: (число)');

  String str = stdin.readLineSync() ?? ' ';
  var intNumberMonth = int.tryParse(str) ?? 0;
  switch (intNumberMonth) {
    case 1 || 2 || 12 :
      print('Зима');
    case 3 || 4 || 5:
      print('Весна');
    case 6 || 7 || 8:
      print('Лето');
    case 9 || 10 || 11:
      print('Осень');
    case 0:
      print('Ошибка ввода!');
    default:
      print('Ошибка ввода!');
  }

  var season = switch (intNumberMonth) {
    1 || 2 || 12 => 'Зима',
    3 || 4 || 5 => 'Весна',
    6 || 7 || 8 => 'Лето',
    9 || 10 || 11 => 'Осень',
    0 => 'Ошибка ввода!',
    _ => 'Ошибка ввода!',
  };

  print(season);

  if (intNumberMonth == 1 || intNumberMonth == 2 || intNumberMonth == 12) {
    print('Зима');
  }
  if (intNumberMonth == 3 || intNumberMonth == 4 || intNumberMonth == 5) {
    print('Весна');
  }
  if (intNumberMonth == 6 || intNumberMonth == 7 || intNumberMonth == 8) {
    print('Лето');
  }
  if (intNumberMonth == 9 || intNumberMonth == 10 || intNumberMonth == 11) {
    print('Осень');
  }
  if (intNumberMonth <= 0) {
    print('Ошибка ввода!');
  }
}
