import 'country.dart';
import 'gender.dart';

class User {
  String firstName;
  String lastName;
  int age;
  Gender gender;
  Country country;

  User({
    required this.firstName,
    required this.lastName,
    required this.age,
    required this.gender,
    required this.country,
  });
}