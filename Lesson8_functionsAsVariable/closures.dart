int indexMicrowave = 0;

String Function(String, int) factory(String nameMicrowave, int power){
  // Function – обобщенный тип данных для функций, к
// которому их можно приводить
  var model = '$nameMicrowave-RX-0003$indexMicrowave';
  indexMicrowave++;
  return (String dish, int mode) {
    var myStr = StringBuffer(
        'Микроволновка "$model" мощностью $power Вт'
    );
    myStr.write(', греет блюдо "$dish" в режиме $mode');
    return myStr.toString();
  };
}
void main(List<String> arguments) {
  var microwave = factory('Scarlet', 750);
  String str = microwave('Макароны', 2);
  print(str);
  print('microwave: ${microwave('Борщ', 3)}, index: $indexMicrowave');
  print(microwave('Котлеты', 5));
  var newMicrowave = factory('Scarlet', 1000);
  print(newMicrowave('Рагу', 2));
}
// Микроволновка "Scarlet-RX-00030" мощностью 750 Вт, греет
// блюдо "Борщ" в режиме 3
// Микроволновка "Scarlet-RX-00030" мощностью 750 Вт, греет
// блюдо "Котлеты" в режиме 5
// Микроволновка "Scarlet-RX-00031" мощностью 1000 Вт, греет
// блюдо "Рагу" в режиме 2