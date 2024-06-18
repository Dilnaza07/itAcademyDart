import 'item.dart';
import 'storage_system.dart';

class Box implements StorageSystem {
  var itemsList = <Item>[];
  final double weightLimit;

  Box(this.weightLimit);

  @override
  void addItem(Item item) {
    var currentSystemWeight = getSystemWeight();
    if ((currentSystemWeight + item.weight) < weightLimit) {
      itemsList.add(item);
      print('${item.name} добалнен(о/а) в коробку!');
    } else {
      print('${item.name} не помещается в коробку!');
    }
  }

  @override
  Item popItem() {
    return itemsList.removeLast();
  }

  @override
  double getSystemWeight() {
    var sum = 0.0;
    for (var element in itemsList) {
      sum += element.weight;
    }
    return sum;
  }
// методы, характерные для коробки
}
