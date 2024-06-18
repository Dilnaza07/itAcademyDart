import '../Lesson15_sealed/money.dart';

mixin Inflation{
  int pecent = 14;
  RUB inflation(RUB rub){
    return switch(pecent){
      != 0 => RUB.kopek(
          rub.value - (rub.value * pecent / 100).ceil(),

      ),
      _ => RUB.kopek(rub.value),
    };
  }
}

// ex4_53.dart
class RUB with Inflation {
  int _val;
  RUB._(this._val);
  factory RUB.fromStr(String value) {
    var rub = (double.parse(value) * 100).toStringAsFixed(0);
    return RUB._(int.parse(rub));
  }
  RUB.kopek(this._val);
  int get value => _val;
  RUB operator +(RUB other) {
    return RUB._(value + other.value);
  }
  @override
  String toString() {
    var rub = (value / 100).toStringAsFixed(2);
    return 'RUB($rub)';
  }
}
void main() {
  RUB rub = RUB.fromStr('100');
  print(rub.inflation(rub)); // RUB(86.00)
}
