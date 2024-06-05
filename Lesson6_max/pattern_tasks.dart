import 'dart:convert';
import 'dart:io';

void main() {
  callPatternTask3();
}

void callPatternTask1() {
  String str = stdin.readLineSync() ?? '';

  final isStringBeginsWithW = str.isNotEmpty && str[0] == 'W';

  if (str.length > 0 && str.length < 15 && isStringBeginsWithW) {
    print('Строка: $str');
  } else {
    print('Pattern no matched!');
  }
}

  void callPatternTask2() {
    String input = stdin.readLineSync() ?? '';
    List<String> strings = input.split(' ');
    dynamic ints = [for (String str in strings) int.tryParse(str) ?? 0];

    print('ints: $ints');

    if (ints case [int a, ...List<int> c, int b]
        when ints.length > 0 && ints.length < 15 && a == 7 && b == 15) {
      print('PATTERN IS MATCHED: $ints');
    } else {
      print('PATTERN IS NOT MATCHED');
    }

  }

  void callPatternTask3() {

    String input = stdin.readLineSync() ?? '';

  Map<dynamic, dynamic> map = jsonDecode(input);

  print(map);

    Map<int, String> myMap = {
      999: 'kgofsdkgodfs',
      5: 'gfdkkgordfsk',
    };

  }