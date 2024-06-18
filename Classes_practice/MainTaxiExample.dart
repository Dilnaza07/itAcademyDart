import 'Taxi.dart';
import 'TaxiCompany.dart';

void main(){

  Taxi taxi1 = Taxi('0136', 'Oleg', 01, 60, 1000);
  Taxi taxi2 = Taxi('0346', 'Ivan', 02, 70, 1200);
  Taxi taxi3 = Taxi('0865', 'Petr', 03, 50, 1500);
  Taxi taxi4 = Taxi('0234', 'Victor', 04, 160, 600);

  Taxicompany taxicompany = Taxicompany();

  taxicompany.addTaxi(taxi1);
  taxicompany.addTaxi(taxi2);
  taxicompany.addTaxi(taxi3);
  taxicompany.addTaxi(taxi4);

  print(taxicompany.findTaxiNumber('0136'));

  print(taxicompany);

 // taxicompany.deleteTaxi(taxi4);

  print(taxi1.calculateProfitability());
  print(taxi2.calculateProfitability());
  print(taxi3.calculateProfitability());
  print(taxi4.calculateProfitability());

  taxicompany.calculateTotalProfitability();

}