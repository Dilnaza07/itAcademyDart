import 'dart:io';

void main() {
  print('Введите 3 числа: ');

  String str1 = stdin.readLineSync() ?? '';
  String str2 = stdin.readLineSync() ?? '';
  String str3 = stdin.readLineSync() ?? '';

  int number1 = int.tryParse(str1) ?? 0;
  int number2 = int.tryParse(str2) ?? 0;
  int number3 = int.tryParse(str3) ?? 0;

  var (:resultString, :max, :min) = calculateMaxAndMin((number1, number2, number3));


  print(resultString);
}

({String resultString, int max, int min}) calculateMaxAndMin((int, int, int) numbers) {
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

  String resultString = 'Самое максимальное число: $max, самое минимальное число: $min';

  return (resultString: resultString, max: max, min: min);


}

/*(int max, int min) calculateMaxAndMin((int, int, int) numbers) {

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

}*/

