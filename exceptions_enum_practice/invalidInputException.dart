import 'validationException.dart';

class InvalidInputException extends ValidationException {
  InvalidInputException(String message) : super(message);
}