main() {
  var list = [
    {
      "name": "tt",
      "type": "file",
      "paths": [
        "tt.json",
        "tt.js",
        "c:/documents/tt.json",
      ]
    },
    {
      "name": "Object",
      "type": "executable",
      "paths": [
        "c:/documents/Object.exe",
        "c:/documents/Object"
      ]
    }
  ];

  var [first, second] = list;
  var [{'type': type1, 'paths': paths1}, {'type': type2, 'paths': paths2}] = list;

// var {'type': type1,'paths': paths1} = first;
  print('type1, $type1, paths1: $paths1');

// var {'type': type2,'paths': paths2} = second;
  print('type2, $type2, paths2: $paths2');


  /* Извлеките из каждого элемента списка данные по
  ключу paths и type. Выведите в терминал полученный
  результат.*/


}