import 'package:stacked/stacked.dart';

class CounterAppModel extends BaseViewModel{
  int _counter = 0;
  int get getCounter => _counter;

  void increment(){
    _counter++;
    notifyListeners();
  }

  void decrement(){
    _counter--;
    notifyListeners();

  }
}