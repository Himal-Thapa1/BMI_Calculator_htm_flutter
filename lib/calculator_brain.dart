import 'dart:math';
class CalculatorBrain {
  CalculatorBrain({required this.height,required this.weight});
  final int height;
  final int weight;

  late double  _bmi;
  String calculateBMI() {
    double _bmi = weight/ pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){
    if(_bmi >=25){
      return "Overweight";
    }
    else if (_bmi >=18.5){
      return "Normal";
    }
    else{
      return "UnderWeight";
    }
  }
  String getInterpretation() {
    if(_bmi >=25){
      return "You have a higher than normal body weight.";
    }
    else if (_bmi >=18.5){
      return "You have a normal body weight. Great Job!";
    }
    else{
      return "You have a lower than normal body weight. You can eat a bit more.";
    }
  }
}