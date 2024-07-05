import 'dart:io';

import 'User.dart';
import 'country.dart';
import 'gender.dart';
import 'invalidAgeException.dart';
import 'invalidInputException.dart';


// Функция для валидации имени и фамилии
String validateName(String name) {
  if (!RegExp(r'^[a-zA-Zа-яА-Я]+$').hasMatch(name)) {
    throw InvalidInputException('Имя и фамилия должны содержать только буквы.');
  }
  return name;
}

// Функция для валидации возраста
int validateAge(String ageInput) {
  int age = int.tryParse(ageInput) ?? -1;
  if (age < 0 || age > 130) {
    throw InvalidAgeException('Возраст должен быть числом от 0 до 130.');
  }
  return age;
}

// Функция для валидации пола
Gender validateGender(String genderInput) {
  switch (genderInput.toLowerCase()) {
    case 'male':
      return Gender.male;
    case 'female':
      return Gender.female;
    default:
      throw InvalidInputException('Пол должен быть один из: male, female, other.');
  }
}

// Функция для валидации страны
Country validateCountry(String countryInput) {
  switch (countryInput.toLowerCase()) {
    case 'usa':
      return Country.USA;
    case 'russia':
      return Country.Russia;
    case 'canada':
      return Country.Canada;
    default:
      throw InvalidInputException('Страна должна быть одна из: USA, Russia, Canada.');
  }
}

void main() {
  String firstName;
  String lastName;
  int age;
  Gender gender;
  Country country;

  // Ввод имени
  while (true) {
    stdout.write('Введите имя: ');
    String? input = stdin.readLineSync();
    try {
      firstName = validateName(input!);
      break;
    } catch (e) {
      print(e);
    }
  }

  // Ввод фамилии
  while (true) {
    stdout.write('Введите фамилию: ');
    String? input = stdin.readLineSync();
    try {
      lastName = validateName(input!);
      break;
    } catch (e) {
      print(e);
    }
  }

  // Ввод возраста
  while (true) {
    stdout.write('Введите возраст: ');
    String? input = stdin.readLineSync();
    try {
      age = validateAge(input!);
      break;
    } catch (e) {
      print(e);
    }
  }

  // Ввод пола
  while (true) {
    stdout.write('Введите пол (male, female): ');
    String? input = stdin.readLineSync();
    try {
      gender = validateGender(input!);
      break;
    } catch (e) {
      print(e);
    }
  }

  // Ввод страны
  while (true) {
    stdout.write('Введите страну (USA, Russia, Canada): ');
    String? input = stdin.readLineSync();
    try {
      country = validateCountry(input!);
      break;
    } catch (e) {
      print(e);
    }
  }

  // Создаем пользователя
  User user = User(
    firstName: firstName,
    lastName: lastName,
    age: age,
    gender: gender,
    country: country,
  );

  print('Пользователь создан: ${user.firstName} ${user.lastName}, ${user.age} лет, пол: ${user.gender}, страна: ${user.country}');
}