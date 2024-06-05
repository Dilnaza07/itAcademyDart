import 'dart:io';

void main() {

  String input = stdin.readLineSync() ?? 'NULLLLLLLL';
  print('INPUT: $input');

  List<String> strings = input.split(' ');
  List<int> ints = [ for (String str in strings) int.tryParse(str) ?? 0 ];

  List<int> intList = input.split(' ').map((str) => int.tryParse(str) ?? 0).toList();

  int sum = calculateSum(intList);

  print('Sum: $sum');

}

int calculateSum(List<int> numbers) {
  // return numbers[0] + numbers[1] + numbers[2];
  var sum = 0;
  for (int number in numbers) sum += number;
  return sum;
}