import 'Taxi.dart';

class Taxicompany {
  List<Taxi> _listOfTaxi = [];
  static int _CarsCount = 0;
  var totalProfitability;

  Taxicompany();

  void addTaxi(Taxi taxi) {
    _listOfTaxi.add(taxi);
    _CarsCount +=1;
  }

  void deleteTaxi(Taxi taxi) {
    _listOfTaxi.remove(taxi);
    _CarsCount -=1;
  }

  Taxi? findTaxiNumber(String number) {
    for (var element in _listOfTaxi) {
      if (element.numberOfTaxi == number) {
        print('Нашли');
        return element;
      }
    }
  }

  void calculateTotalProfitability() {
    for (var element in listOfTaxi) {
      totalProfitability += element.calculateProfitability();
      print(totalProfitability);
    };
  }





  int get CarsCount => _CarsCount;

  set CarsCount(int value) {
    _CarsCount = value;
  }

  List<Taxi> get listOfTaxi => _listOfTaxi;

  set listOfTaxi(List<Taxi> value) {
    _listOfTaxi = value;
  }

  @override
  String toString() {
    return 'Taxicompany{_listOfTaxi: $_listOfTaxi, totalProfitability: $totalProfitability}';
  }
}
