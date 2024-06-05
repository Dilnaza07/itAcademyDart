import 'dart:io';

void main() {
  const a = 5;

  String str = stdin.readLineSync() ?? '';
  var stringList = [...str.split(' ')];
  var intList = [for (String string in stringList) int.tryParse(string) ?? 0 ];

  var list = getList();

  list?[5] = null;

  // print(list.elementAt(9));

  var list2 = [1, 2, 3];
  var list3 = [0, ...list2];

  var list4 = [0, ...?list];

  var promoActive = true;

  var list5 = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet' else 'NotOutlet'];

  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i = 0; i < 100; i++) '#$i'];

  for (int i = 0; i < 100; i++) {
    if (i % 2 == 0) print(i);
  }

  for (String string in list5) {
    print(string.substring(2));
  }


  print(listOfStrings);

  callWhile(false);
}

List<int?>? getList() {
  return null;
  // return List.generate(10, (i) => i * i);
}

void callWhile(bool isDone) {

  var i = 0;

  do {
    print('-_-');
    i++;
    if (i == 200) isDone = true;
  } while (!isDone);

}