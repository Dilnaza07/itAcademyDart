void main() {
  var myList = [
    {
      "name": "tt",
      "type": "file",
      "paths": [
        "tt.json",
        "tt.js",
        "c:/documents/tt.json",
      ]
    },
    {
      "name": "Object",
      "type": "executable",
      "paths": ["c:/documents/Object.exe", "c:/documents/Object"]
    },
    {
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
    }
  ];

  callTask1(myList);
}

/// Если имеется ключ "name" со значением "tt"
/// или ключ 'course' со значением 2, то выведи "Full Match".
/// Если же есть ключ "paths" у которого в списке 2 или больше значений,
/// то выведи "There are list with 2 or more values".
/// В ином случае выводим "No match".
void callTask1(List<Map<Object, Object>> myList) {
  for (var element in myList) {
    switch (element) {
      case {'name': 'tt'} || {'course': 2}:
        print('Full match');
      case {"paths": List list} when list.length >= 2:
        print("There are list with 2 or more values");
      case {"paths": [_, _, ...]}:
        print("There are list with 2 or more values");
      default:
        print('No match');
    }
  }
}
