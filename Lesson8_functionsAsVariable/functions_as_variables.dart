typedef MyFunc = int Function(int, int);

int add(int a, int b) {
  return a + b;
}

String calculateSeason(int month) {
  return switch (month) {
    == 12 || > 0 && < 3 => 'Winter',
    >= 3 && < 6 => 'Spring',
    >= 6 && < 9 => 'Summer',
    >= 9 && < 12 => 'Autumn',
    _ => "WTF? (╯'□')╯︵┻━┻",
  };
}

void main(List<String> arguments) {
  var myAdd = add;
  print(myAdd(10, 5)); // 15
  var mySeason = calculateSeason;
  print(mySeason(10)); // Autumn
  print(mySeason(-1)); // WTF? (╯'□')╯︵ ┻━┻
  var o_O = (int a, int b) {
    return a * b;
  };
  print(o_O(10, 5)); // 50

  print(myStrFunc('ヽ༼ ಥ_ಥ༽ﾉ', 12, calculateSeason));
// ヽ༼ ಥ_ಥ༽ﾉ Winter
  print(myStrFunc("(҂ 'з´) ︻╦̵̵̿ ╤──", 0, calculateSeason));
// (҂ 'з´) ︻╦̵̵̿ ╤── WTF? (╯'□')╯︵ ┻━┻
  print(sub(3, 7)); // 0
  print(sub(2, 4, c: 2)); // -4
  print(
    sub(2, 4, c: 2, func: (int a, int b) {

      return a * b;
    }),
  );
}

String myStrFunc(
  String prefix,
  int month,
  String Function(int) func,
) {
  return prefix + ' ' + func(month);
}

int sub(
  int a,
  int b, {
  int c = 10,
  MyFunc func = add,
}) {
  return c - func(a, b);
}
