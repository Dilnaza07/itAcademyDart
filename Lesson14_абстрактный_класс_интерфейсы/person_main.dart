import 'alan.dart';
import 'impostor.dart';
import 'person.dart';

String greet(Person firstPerson, Person secondPerson) {
  return firstPerson.greet(secondPerson);
}

int checkAge(Person firstPerson, Person secondPerson) {
  return firstPerson.howMuchOlder(secondPerson);
}

void main(List<String> arguments) {
  var maxim = Person('Макс', 45);
  var alan = Alan();
  var impostor = Impostor();
  print(greet(maxim, alan)); // Привет, Алан!!!. Меня зовут Макс.
  print(greet(impostor, maxim)); // Вот ты и попался, Макс!!!
  print(checkAge(maxim, alan)); // 12
  print(checkAge(alan, maxim)); // 22
}
