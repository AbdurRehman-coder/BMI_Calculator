import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({
    required this.height,
    required this.weight,
});
  // will get these values through constructor
  final height;
  final weight;
  late double _bmi;
  // method will calculate the result
 String getResult(){
   _bmi = weight / pow(height/100, 2);
   return _bmi.toStringAsFixed(1);
 }
 // method will get the text result
 String getTextResult(){
   if(_bmi >= 25){
     return 'overweight';
   } else if ( _bmi > 18.5){
     return 'Normal';
   }else{
     return 'Underweight';
   }
 }
 // method will get the interpretation for the result
  String? getInterpretation(){
   if (_bmi > 25){
     return 'You have more body weight than Normal. You have to exercise more!';
   } else if ( _bmi > 18.5){
     return 'You have Normal body weight. Good job!';
   }else{
     return 'Your body weight is lower then normal. You have to eat more! :)';
   }
  }
}