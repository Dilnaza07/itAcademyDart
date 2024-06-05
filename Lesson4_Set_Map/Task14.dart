main() {
  var record = (23, 89, pef: 'Oo', pruf: 3.976);

  var (_, secondNum, pef: _, pruf: pruf) = record;

  var sum = secondNum * pruf;
  print(sum);

  /* Извлеките из записи значение второго позиционного
  поля, именнованного pruf и выведите в терминал их
  произведение*/

  // homework 17, 18 tasks

  task17();
  task18();
}

void task17() {
  var map = {
    "id": 25,
    "box": {
      "width": 15,
      "height": 25,
      "coords": {"x": -7, "y": 11}
    }
  };

  var {'id': id, 'box': box} = map;
  var {'width': width, 'height': height, 'coords': coords} = box as Map;
  var {"x": X, "y": Y} = coords;

  print(X + Y);

  /* Извлеките координаты (х, у), рассчитайте сумму их
  значений и выведите в терминал полученный
  результат*/
}

void task18() {
  var map = {
    "id": 25,
    "box": {"width": 15, "height": 25, "length": 5}
  };

  var {'id': id, 'box': box} = map;
  var {'width': width, 'height': height, 'length': length} = box as Map;

  print(width*height*length);
  /* Извлеките данные по габаритам коробки, рассчитайте
  ее объем и выведите в терминал полученный
  результат.*/
}
