import 'dart:io';

void main() {
  print('Введите 3 числа: ');
  String? str1 = stdin.readLineSync() ?? '';
  String? str2 = stdin.readLineSync() ?? '';
  String? str3 = stdin.readLineSync() ?? '';

  int? num1 = int.tryParse(str1) ?? 0;
  int? num2 = int.tryParse(str2) ?? 0;
  int? num3 = int.tryParse(str3) ?? 0;

  var record = (num1, num2, num3);

  (int max, int min) result = calculateMaxAndMin(record);
  print('Максимальное число: ,минимальное число: $result');
}

(int, int) calculateMaxAndMin((int, int, int) numbers) {
  int max = numbers.$1;
  int min = numbers.$1;

  if (numbers.$2 > max) {
    max = numbers.$2;
  }
  if (numbers.$3 > max) {
    max = numbers.$3;
  }
  if (numbers.$2 < min) {
    min = numbers.$2;
  }
  if (numbers.$3 < min) {
    min = numbers.$3;
  }

  return (max, min);
}
