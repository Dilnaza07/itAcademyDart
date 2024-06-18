// //import 'package:sealed_example/sealed_example.dart';
//
// import 'Money.dart';
// import 'money.dart';
//
// void addMoney((Money, Money) money) {
//   switch (money) {
//     case (RUB(value: > 30000), RUB(value: <= 500)):
//       print(money.$1 + money.$2);
//     case (USD(), USD(value: <= 300)):
//       print(money.$1 + money.$2);
//     case (EUR(value: > 20000), EUR()):
//       291
//       print(money.$1 + money.$2);
//     case (RUB(value: > 50000), USD()):
//       print(money.$2 + money.$1);
//     case _:
//       print('╭∩╮( •̀_•́ )╭∩╮');
//   }
// }
//
// void main(List<String> arguments) {
//   addMoney(
//       (Money.fromStr('rub', '200'), Money.fromStr('rub', '100'))
//   );
//   addMoney(
//       (Money.fromStr('usd', '200'), Money.fromStr('usd', '3'))
//   );
//   addMoney(
//       (Money.fromStr('eur', '200'), Money.fromStr('eur', '100'))
//   );
//   addMoney(
//       (Money.fromStr('rub', '2000'), Money.fromStr('usd', '10'))
//   );
//   addMoney(
//       (Money.fromStr('eur', '200'), Money.fromStr('rub', '100'))
//   );
// }