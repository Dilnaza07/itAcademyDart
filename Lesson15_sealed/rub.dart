part of 'money.dart';
class RUB extends Money {
  RUB(super.val);
  factory RUB.fromStr(String value) {
    var rub = (double.parse(value) * 100).toStringAsFixed(0);
    return RUB(int.parse(rub));
  }
  @override
  RUB operator +(Money other) {
    return RUB(value + other.value);
  }
  @override
  String toString() {
    var rub = (value / 100).toStringAsFixed(2);
    return 'RUB($rub)';
  }
}