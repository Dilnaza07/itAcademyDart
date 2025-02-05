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




/// 4. Реализуйте класс «Кошелек» куда могут добавляться экземпляры
// классов денежных валют (рубль и юань) различного номинала. Кошелек
// должен иметь возможность возвращать полную сумму денег всех валют в
// задаваемой валюте, количество денег конкретной валюты и уметь
// конвертировать с задаваемым коэффициентом деньги из одной валюты в
// другую. Требуется реализовать возможность вывода текущих состояний
// объектов в терминал.///