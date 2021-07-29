import 'package:apptest/base/base_bloc.dart';

class MeasuresProvider extends BaseBloc {
  String distanceValue = 'Kilometers'; 
  String lenghtValue = 'Feet'; 
  String timeValue = '24 hour clock'; 

  onDistanceChanged(value){
    distanceValue = value;
    notifyListeners();
  }
  
  onLenghtChanged(value){
    lenghtValue = value;
    notifyListeners();
  }

  onTimeChanged(value){
    timeValue = value;
    notifyListeners();
  }

}