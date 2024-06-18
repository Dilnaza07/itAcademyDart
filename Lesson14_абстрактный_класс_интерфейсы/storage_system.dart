import 'item.dart';

abstract class StorageSystem {

  void addItem(Item item);

  Item popItem();

  double getSystemWeight();

}
