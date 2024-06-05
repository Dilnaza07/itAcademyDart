void main() {
  callExample4();
}

void callExample1() {
  var myList = [
    [],
    [1],
    [1, 2, 3],
    [1, 2, 3, 4, 5],
  ];

  var myStr = '';

  for (var element in myList) {
    if (element == [1]) {
    } else if (element == [1, 2, 3]) {}

    switch (element) {
      case [1]:
        myStr += '1 ';
      case [1, 2, 3]:
        myStr += '3 ';
      case []:
        myStr += '0 ';
      default:
        myStr += '! ';
    }
  }
  print(myStr); // 0 1 3 !
}

void callExample2() {
  var myList = [
    [],
    [3],
    [1, 15302, 3],
    [151351, 53252, 64363, 4, 5],
  ];
  var myStr = '';

  for (var element in myList) {
    switch (element) {
      case [_]:
        myStr += '1 ';
      case [1, _, 3]:
        myStr += '3 ';
      case [_, _, _, 4, 5]:
        myStr += '0 ';
      default:
        myStr += '! ';
    }
  }
  print(myStr); // ! 1 3 0
}

void callExample3() {
  var myList = [
    [],
    [3],
    [1, 5, 65, 643, 5213, 3],
    [1, 2, 3, 4, 5],
    [7, 2, 3, 4, 5, 8],
    [7, 2, 3, 4, 5, 8, 9],
  ];
  var myStr = '';
  for (var element in myList) {
    switch (element) {
      case [1, 2, ..., _]:
        myStr += '5 ';
      case [1, ...var c, 3]:
        print('c: $c');
        myStr += '3 ';
      case [..., 9]:
        myStr += '7 ';
      case [7, ...]:
        myStr += '6 ';
      case [...]: // список любой длины
        myStr += '0 ';
    }
  }
  print(myStr); // 0 0 3 5 6 7
}

void callExample4() {
  var myList = [
    [1, 2, 3],
    [3, 2, 3, 4, 5],
    [7, 2, 3, 4, 5, 8],
    [7, 4, 3, 4, 5, 8, 9],
  ];
  var myStr = '';
  for (var element in myList) {
    switch (element) {
      case [1 || 3 || 7, 2 || 4, ...]:
        myStr += '5 ';
      case [1, ..., 3]:
        myStr += '3 ';
      case [..., 9]:
      case [...]: // список любой длины
        myStr += '0 ';
    }
  }
  print(myStr); // 5 5 5 5
}

void callExample5() {
  var myList = [
    [],
    [3],
    [1, 5, 3],
    [1, 2, 3, 4, 5],
    [7, 2, 3, 4, 5, 8],
    [7, 2, 3, 4, 5, 8, 9],
  ];
  
  var myStr = '';
  for (var element in myList) {
    switch (element) {
      case [...]: // список любой длины
        myStr += '0 ';

      case [1, 2, ..., _]:
        myStr += '5 ';
      case [1, ..., 3]:
        myStr += '3 ';
      case [..., 9]:
        myStr += '7 ';
      case [7, ...]:
        myStr += '6 ';
    }
  }
  print(myStr); // 0 0 0 0 0 0
}
