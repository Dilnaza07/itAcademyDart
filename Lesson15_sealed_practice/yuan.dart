part of 'Currency.dart';

class YUAN extends Currency {
  YUAN(super.val);
  factory YUAN.fromStr(String value) {
    var yuan = (double.parse(value) * 100).toStringAsFixed(0);
    return YUAN(int.parse(yuan));
  }
  @override
  YUAN operator +(Currency other) {
    return YUAN(value + other.value);
  }
  @override
  String toString() {
    var yuan = (value / 100).toStringAsFixed(2);
    return 'YUAN($yuan)';
  }
}