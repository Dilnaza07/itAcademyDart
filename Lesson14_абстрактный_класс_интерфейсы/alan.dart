import 'person.dart';

class Alan implements Person {
  @override
  int age = 33;

  @override
  String get name => 'Алан';

  @override
  String greet(Person person) {
    return 'Привет, ${person.name}!!! Меня зовут $name.';
  }

  @override
  int howMuchOlder(Person person) {
    return age * 2 - person.age;
  }
}
