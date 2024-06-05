import 'dart:io';

void main() {
  print('Введите целочисленный список');
  String str = stdin.readLineSync() ?? "";
  List str2 = [...str.split(' ')];
  List<int> ints = [for (var element in str2) int.tryParse(element) ?? 0];

  var maxInt = showMaxInt(ints);
  print(maxInt);
}

int showMaxInt(List<int> ints) {
  var max = 0;

  for (int i = 0; i < ints.length; i++) {
    if (ints[i] > max) {
      max = ints[i];
    }
  }
  return max;
}
