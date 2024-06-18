import 'item.dart';
import 'storage_system.dart';

class Cupboard implements StorageSystem {
  var itemsList = <Item>[];

  @override
  void addItem(Item item) {
    itemsList.add(item);
    print('${item.name} добалнен(о/а) в шкаф!');
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
// методы, характерные для шкафа
}
