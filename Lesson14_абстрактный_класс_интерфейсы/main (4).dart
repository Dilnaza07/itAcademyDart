import 'box (2).dart';
import 'cupboard.dart';
import 'item.dart';
import 'storage_system.dart';

void main(List<String> arguments) {
  var box = Box(18);
  var cupboard = Cupboard();
  StorageSystem? storageSystem = box;
  storageSystem.addItem(Item('Книга', 2.6));
  storageSystem.addItem(Item('Чайник', 3.9));
  storageSystem.addItem(Item('Гантеля', 10));
  storageSystem.addItem(Item('Монитор', 4));
  Item gantelya = storageSystem.popItem();
  print(storageSystem.getSystemWeight());
  print(gantelya.name);
  storageSystem = cupboard;
  print(storageSystem.getSystemWeight());
  storageSystem.addItem(Item('Монитор', 4));
  storageSystem.addItem(Item('Чайник', 3.9));
  print(storageSystem.getSystemWeight());
}
