class Person {
  final String name;
  int age;

  Person(this.name, this.age);

  int howMuchOlder(Person person) => age - person.age;

  String greet(Person person) {
    return 'Привет, ${person.name}!!!. Меня зовут $name.';
  }
}
