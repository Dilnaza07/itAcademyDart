import 'dart:io';

main() {
  String str = stdin.readLineSync() ?? '';

  List<String> stringList = str.split(' ');
  List<int> intList = [
    for (int i = 0; i < stringList.length; i++) int.tryParse(stringList[i]) ?? 0];

  var result = calculateSum3(intList);
  print('summa vseh chisel: $result');
}

int calculateSum3(List<int> list) {
  int sum = 0;
  for (int i = 0; i < list.length; i++) {
    sum = sum + list[i];
  }
  return sum;
}
