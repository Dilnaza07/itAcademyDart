import 'dart:io';

void main() {
  callTask1WithIf();
}

void callTask1WithIf() {
  var month = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  String season;

  if (month == 1 || month == 2 || month == 12) {
    season = 'Winter';
  } else if (month == 3 || month == 4 || month == 5) {
    season = 'Spring';
  } else if (month == 6 || month == 7 || month == 8) {
    season = 'Summer';
  } else if (month == 9 || month == 10 || month == 11) {
    season = 'Autumn';
  } else {
    season = 'Ошибка ввода';
  }

  if (month < 1 || month > 12) {
    season = 'Ошибка ввода';
  } else if (month <= 2 || month == 12) {
    season = 'Winter';
  } else if (month <= 5) {
    season = 'Spring';
  } else if (month <= 8) {
    season = 'Summer';
  } else if (month <= 11) {
    season = 'Autumn';
  }

  print(season);
}

void callTask1WithCase() {
  var month = int.tryParse(stdin.readLineSync() ?? '');

  var season = switch (month) {
    1 || 2 || 12 => 'Winter',
    3 || 4 || 5 => 'Spring',
    6 || 7 || 8 => 'Summer',
    9 || 10 || 11 => 'Autumn',
    _ => 'Ошибка ввода',
  };

  switch (month) {
    case 1 || 2 || 12: print('Winter');
    case 3 || 4 || 5:  print('Spring');
    case 6 || 7 || 8: print('Summer');
    case 9 || 10 || 11: print('Autumn');
    default: print('Ошибка ввода');
  };

  print(season);
}
