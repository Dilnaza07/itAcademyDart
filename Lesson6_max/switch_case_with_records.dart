void main() {
  List<Record> myList = [
    (10, '-_-'),
    ('^_^', 10, 20),
    (5, smile: 'O_O'),
    (10, smile: '-_-'),
    (4, smile: '-_-', pruff: [23, 45]),
  ];

  callExample3();
}

void callExample1(List<Record> myList) {
  for (var element in myList) {
    switch (element) {
      case (10, '-_-') ||
      (4, smile: '-_-', pruff: [23, 45]) ||
      (5, smile: '-_-'):
        print('Full match: $element');
      default:
        print('No match: $element');
    }
  }
}

void callExample2(List<Record> myList) {
  for (var element in myList) {
    switch (element) {
      case (10, '-_-') || (4, smile: '-_-', pruff: [23, 45]) || (_, smile: _):
        print('Full match: $element');
      default:
        print('No match: $element');
    }
  }
}

void callExample3() {
  var myList = [
    (10, '-_-'),
    ('^_^', 10, 20),
    (5, smile: 'O_O'),
    (5, smile: '-_-'),
    (4, smile: '-_-', pruff: [23, 45]),
    (4, pruff: [23, 45, 50]),
  ];
  for (var element in myList) {
    switch (element) {
      case (10, '-_-') ||
      (4, smile: '-_-', pruff: [23, 45]):
        print('Full match: $element');
      case (5, smile: String smile):
        print('Partial match with smile: $smile');
      case (_, pruff: List<int> pruff):
        print('Partial match with pruff: $pruff');
      default:
        print('No match: $element');
    }
  }

  }