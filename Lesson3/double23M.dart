import 'dart:io';

void main() {
  String input = stdin.readLineSync() ?? '';
  print('INPUT: $input');

  List<String> strings = input.split(' ');
  List<int> ints = [for (String str in strings) int.tryParse(str) ?? 0];

  bool isDouble23 = getIsDouble23(ints);

  print('isDouble23: $isDouble23');
}

bool getIsDouble23(List<int> numbers) {
  var twoCounter = 0;
  var threeCounter = 0;

  for (int num in numbers) {
    if (num == 2)
      twoCounter++;
    else if (num == 3) threeCounter++;
  }

  var index = 0;
  var twoCounter2 = 0;
  var threeCounter2 = 0;

  while (index < numbers.length) {
    if (numbers[index] == 2)
      twoCounter2++;
    else if (numbers[index] == 3) threeCounter2++;
    index++;
  }

  int twoCounter3 = 0, threeCounter3 = 0, index2 = 0;

  do {
    if (numbers[index2] == 2)
      twoCounter3++;
    else if (numbers[index2] == 3) threeCounter3++;
    index2++;
  } while (index2 < numbers.length);

  print('twoCounter: $twoCounter, threeCounter: $threeCounter');

  print('twoCounter2: $twoCounter2, threeCounter2: $threeCounter2');

  print('twoCounter3: $twoCounter3, threeCounter3: $threeCounter3');

  return twoCounter2 == 2 || threeCounter2 == 2;
}
