// import 'money.dart';
//
// void main() {
//   // Money money = RUB(100);
//   // switch (money) {
//   //   case RUB():
//   //     print('RUB');
//   //   case USD():
//   //     print('USD');
//   //   case EUR():
//   //     print('EUR');
//   // }
//
//   // addMoney((RUB.fromStr('200'), RUB.fromStr('100')));
//   addMoney((USD.fromStr('200'), USD.fromStr('100')));
//   addMoney((EUR.fromStr('200'), EUR.fromStr('100')));
//   // addMoney((RUB.fromStr('2000'), USD.fromStr('10')));
//   // addMoney((EUR.fromStr('200'), RUB.fromStr('100')));
//
//   wtfIsMoney(RUB.create('98'));
//   wtfIsMoney(USD.fromStr('3'));
//   wtfIsMoney(EUR.fromStr('100'));
//   wtfIsMoney(DigitalRUB.fromStr('1000'));
//   wtfIsMoney(PaperRUB.rub50());
//
//   rubWorker(RUB.create('1000', false));
//   rubWorker(RUB.create('5000'));
//   rubWorker(PaperRUB.rub500());
//   rubWorker(PaperRUB.rub5000());
// }
//
// void addMoney((Money, Money) money) {
//   switch (money) {
//     case (RUB(), RUB()):
//       print(money.$1 + money.$2);
//     case (USD(), USD()):
//       print(money.$1 + money.$2);
//     case (EUR(), EUR()):
//       print(money.$1 + money.$2);
//     case (RUB(), USD()):
//       print(money.$2 + money.$1);
//     case (USD(), RUB()):
//       print(money.$2 + money.$1);
//     case _:
//       print('Разные валюты');
//   }
// }
//
// void addMoney2((Money, Money) money) {
//   switch (money) {
//     case (RUB(value: > 30000), RUB(value: <= 500)):
//       print(money.$1 + money.$2);
//     case (USD(), USD(value: <= 300)):
//       print(money.$1 + money.$2);
//     case (EUR(value: > 20000), EUR()):
//       print(money.$1 + money.$2);
//     case (RUB(value: > 50000), USD()):
//       print(money.$2 + money.$1);
//     case _:
//       print('╭∩╮( •̀_•́)╭∩╮');
//   }
// }
//
// void wtfIsMoney(Money money) {
//   switch (money) {
//     case DigitalRUB():
//       print('Цифровой рубль - $money');
//     case PaperRUB():
//       print('Бумажный рубль - $money');
//     case USD():
//       print('Доллар - $money');
//     case EUR():
//       print('Евро - $money');
//   }
// }
//
// void rubWorker(RUB rub) {
//   switch (rub) {
//     case DigitalRUB(value: > 300000):
//       print('Цифровой рубль - $rub');
//     case PaperRUB(value: == 50000):
//       print('Бумажный рубль - $rub');
//     case _:
//       print('Это не правильные рубли ╭∩╮( •̀_•́ )╭∩╮');
//   }
// }