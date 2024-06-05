void main() {
  var a = -10;

  var isNumMoreThan5AndEven = (a > 5 && a % 2 == 0);

  if (isNumMoreThan5AndEven || a < 0) {
    print('Значение удовлетворяет условиям');
// Значение удовлетворяет условиям
  } else {
    print('Значение не удовлетворяет условиям');
  }
}