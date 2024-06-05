import 'dart:io';

main() {
  String str = stdin.readLineSync() ?? '';

  List<String> stringList = str.split(' ');
  List<int> intList = [
    for (int i = 0; i < stringList.length; i++) int.tryParse(stringList[i]) ?? 0
  ];

  var result = double23(intList);
  print('result: $result');
}

bool? double23(List<int> list) {
  int i = 0;

  bool result = false;
  int count2 = 0;
  int count3 = 0;

  while (i < list.length) {

    if (list[i] == 2) {
      count2++;
      if (count2 == 2) {
        result = true;
      }
    }
    if (list[i] == 3) {
      count3++;
      if (count3 == 2) {
        result = true;
      }
    }

    i++;
  }
  return result;
}
