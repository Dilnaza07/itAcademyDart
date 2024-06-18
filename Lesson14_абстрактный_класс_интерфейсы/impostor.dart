import 'person.dart';

class Impostor implements Person {

  @override
  int age = 0;

  @override
  String get name => '';

  @override
  String greet(Person person) {
    return 'Вот ты и попался, ${person.name}!!!';
  }

  @override
  int howMuchOlder(Person person) {
    return -1;
  }

}
