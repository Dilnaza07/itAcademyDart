void main(List<String> arguments) {
  var myList = ['Привет!', 'Я', '-', 'анонимная', 'функция!'];
  myList.forEach((item) {
    print('По индексу ${myList.indexOf(item)} хранится значение => $item');
  });

  print(sub(30, 21, 2, add)); // 7
}

int add(int a, int b) => a + b;

int sub(
  int c,
  int a,
  int b,
  int Function(int, int) func,
) =>
    c - func(a, b);
