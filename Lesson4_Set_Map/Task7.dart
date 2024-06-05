main() {
  var map = {
    "name": "Alex",
    "age": 35,
    "course": 2,
    "single": true,
    "description": [
      "Мечтатель",
      "Ленив",
      "Студент",
      "Постоянно жалуется на жизнь"
    ]
  };

  var {'name': name, 'age': age, 'description': description} = map;
  print('name: $name, age: $age, description: $description');
}
