// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:math' as math;

double _bmi = 0;

class ModelBloc {
  double? height;
  int? weight;

  ModelBloc({
    required this.height,
    required this.weight,
  });
  String calculateBMI() {
    _bmi = weight! / math.pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String? bmiFunction() {
    if (_bmi < 16) {
      return "Выраженный дефицит массы тела  ";
    } else if (16 < _bmi && _bmi < 18.5) {
      return "Недостаточная масса тела (дефицит) ";
    } else if (18.5 < _bmi && _bmi < 25) {
      return "Норма ";
    } else if (25 < _bmi && _bmi < 30) {
      return "Избыточная масса тела (состояние, предшествующее ожирению)";
    } else if (30 < _bmi && _bmi < 35) {
      return "Ожирение 1-й степени;";
    } else if (35 < _bmi && _bmi < 40) {
      return "Ожирение 2-й степени";
    } else if (40 < _bmi && _bmi < 200) {
      return "Ожирение 3-й степени ";
    }
    return null;
  }
  
  String? tesheruu(){
    if(height==0 || weight==0){
      return" Height же Weight киргизбедиңиз!!! ";
    }
    else{
      return "Баардыгын туура аткардыңыз";
    }
  }
}
