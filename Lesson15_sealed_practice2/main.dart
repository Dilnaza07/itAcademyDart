// Абстрактный класс для валют
abstract class Currency {
  double amount;

  Currency(this.amount);

  // Метод для получения названия валюты
  String getName();

  // Метод для получения текущего номинала
  double getAmount();

  // Метод для конвертации в другую валюту
  double convertTo(Currency otherCurrency, double rate);

  @override
  String toString() {
    return '$amount ${getName()}';
  }
}

// Класс для рублей
class Ruble extends Currency {
  Ruble(double amount) : super(amount);

  @override
  String getName() => 'RUB';

  @override
  double getAmount() => amount;

  @override
  double convertTo(Currency otherCurrency, double rate) {
    return amount * rate;
  }
}

// Класс для юаней
class Yuan extends Currency {
  Yuan(double amount) : super(amount);

  @override
  String getName() => 'CNY';

  @override
  double getAmount() => amount;

  @override
  double convertTo(Currency otherCurrency, double rate) {
    return amount * rate;
  }
}

// Класс для кошелька
class Wallet {
  List<Currency> _currencies = [];

  // Метод для добавления валюты в кошелек
  void addCurrency(Currency currency) {
    _currencies.add(currency);
  }

  // Метод для получения количества денег конкретной валюты
  double getTotalAmount(String currencyName) {
    double total = 0.0;
    for (var currency in _currencies) {
      if (currency.getName() == currencyName) {
        total += currency.getAmount();
      }
    }
    return total;
  }

  // Метод для получения полной суммы денег всех валют в задаваемой валюте
  double getTotalInCurrency(Currency targetCurrency, double rateRubleToTarget, double rateYuanToTarget) {
    double total = 0.0;
    for (var currency in _currencies) {
      if (currency is Ruble) {
        total += currency.convertTo(targetCurrency, rateRubleToTarget);
      } else if (currency is Yuan) {
        total += currency.convertTo(targetCurrency, rateYuanToTarget);
      }
    }
    return total;
  }

  // Метод для вывода текущих состояний объектов в терминал
  void printWalletState() {
    for (var currency in _currencies) {
      print(currency);
    }
  }
}

void main() {
  Wallet myWallet = Wallet();

  // Добавляем разные валюты в кошелек
  myWallet.addCurrency(Ruble(500));
  myWallet.addCurrency(Yuan(100));
  myWallet.addCurrency(Ruble(1500));
  myWallet.addCurrency(Yuan(200));

  // Выводим текущее состояние кошелька
  myWallet.printWalletState();

  // Получаем количество рублей в кошельке
  double totalRubles = myWallet.getTotalAmount('RUB');
  print('Total RUB: $totalRubles');

  // Получаем количество юаней в кошельке
  double totalYuans = myWallet.getTotalAmount('CNY');
  print('Total CNY: $totalYuans');

  // Конвертируем все деньги в рубли и выводим сумму
  double totalInRubles = myWallet.getTotalInCurrency(Ruble(0), 1, 11); // 1 CNY = 11 RUB (примерный курс)
  print('Total in RUB: $totalInRubles');

  // Конвертируем все деньги в юани и выводим сумму
  double totalInYuans = myWallet.getTotalInCurrency(Yuan(0), 0.09, 1); // 1 RUB = 0.09 CNY (примерный курс)
  print('Total in CNY: $totalInYuans');
}