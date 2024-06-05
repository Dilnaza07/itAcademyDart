import 'dart:io';
import 'dart:math';

main() {
  print('Введите число');
  String str = stdin.readLineSync() ?? "";
  int num = int.tryParse(str) ?? 0;
  var result = multiple(num);
  print(result);
}

num multiple(int a) {
  num result = 0;
  if(a!=0){
    result = pow(a,3);
  }
  return result;;
}
/*10. Пользователь вводит с клавиатуры число.
Напишите функцию, возводящую его в куб и возвращающую полученный результат,
который затем выведите в терминал.*/
