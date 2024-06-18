part 'rub.dart';
part 'yuan.dart';

sealed class Currency {

late final int _val;

Currency(this._val);

factory Currency.fromStr(String currency, String value) {
var money = (double.parse(value) * 100).toStringAsFixed(0);
switch (currency.toLowerCase()) {
case 'rub':
return RUB(int.parse(money));
case 'yuan':
 return YUAN(int.parse(money));
}
throw UnsupportedError('Неподдерживаемая валюта');
}

int get value => _val;

Currency operator +(Currency other);
}




/// 4. Реализуйте класс «Кошелек» куда могут добавляться экземпляры
// классов денежных валют (рубль и юань) различного номинала. Кошелек
// должен иметь возможность возвращать полную сумму денег всех валют в
// задаваемой валюте, количество денег конкретной валюты и уметь
// конвертировать с задаваемым коэффициентом деньги из одной валюты в
// другую. Требуется реализовать возможность вывода текущих состояний
// объектов в терминал.///