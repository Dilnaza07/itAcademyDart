main(){
  var myRecord1 = (10, '-_-');

  var (fist, second) = myRecord1;
  print('$fist $second'); // 10 -_-
  var (a, _) = myRecord1;
  print('$a'); // 10
  var myRecord2 = (3.14, cost: 10, smile: '-_-', 22);
  var (fistPos, secondPos,
  cost: costPos, smile: SmilePos) = myRecord2;
  print('$fistPos, $secondPos, $costPos, $SmilePos');
  // 3.14 22 10 -_-

  var (b, _, cost: _, smile: c) = myRecord2;
  print('$b, $c'); // 3.14 -_-


  callExample1();
  callExample2();
}

void callExample1(){
  var fisrt = 10;
  var second = 20;
  (fisrt, second) = (second, fisrt);
  print('fisrt: $fisrt, second: $second');
  // fisrt: 20, second: 10

}

void callExample2(){
  // ex2_10.dart
  final myMap = {"first": 1, "second": 2};
  print(myMap); // {first: 1, second: 2}
  final {"first": first, "second": second} = myMap;
  print("$first, $second"); // 1, 2
  final {"first": a} = myMap;
  print("$a"); // 1
  final {"second": b} = myMap;
  print("$b");} // 2


  void callExample3(){
  // ex2_11.dart
  Map<String, List<int>> myMap = {
    'first': [1, 2, 3],
    'second': [4, 5, 6],
  };
  var {'first': [a, _, b]} = myMap;
  print('a: $a, b: $b'); // a: 1, b: 3
  Map<int, Map<String, int>> myMap2 = {
    1: {'a': 1, 'b': 2},
    2: {'c': 3, 'd': 4},
    };
  var {1: {'a': c, 'b': d}} = myMap2;
  print('c: $c, d: $d'); // c: 1, d: 2

}