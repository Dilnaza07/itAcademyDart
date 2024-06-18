class Taxi{

  String _numberOfTaxi;
  String _nameOfDriver;
 // int ageOfDriver;
 // int experience;
  int _id;
 // int income = 0;
  int _tarifRate;
  int _kilometers;


  Taxi(this._numberOfTaxi, this._nameOfDriver, this._id, this._tarifRate,
      this._kilometers);

  String get numberOfTaxi => _numberOfTaxi;

  set numberOfTaxi(String value) {
    _numberOfTaxi = value;
  }

  int getTariffRate(int tarifRate){
    return this.tarifRate = tarifRate;
  }

  String get nameOfDriver => _nameOfDriver;

  set nameOfDriver(String value) {
    _nameOfDriver = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get tarifRate => _tarifRate;

  set tarifRate(int value) {
    _tarifRate = value;
  }

  int get kilometers => _kilometers;

  set kilometers(int value) {
    _kilometers = value;
  }

  @override
  String toString() {
    return 'Taxi{_numberOfTaxi: $_numberOfTaxi, _nameOfDriver: $_nameOfDriver, _tarifRate: $_tarifRate, _kilometers: $_kilometers}';
  }

int calculateProfitability(){
   return this._kilometers * this._tarifRate;
  }


}