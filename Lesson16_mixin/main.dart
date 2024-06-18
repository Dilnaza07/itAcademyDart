import 'Airplane.dart';
import 'Bee.dart';
import 'Bird.dart';

void main() {
  final bee = Bee();
  final bird = Bird();
  final airplane = Airplane();

  bee.fly();
  bird.fly();
  airplane.fly();
}
