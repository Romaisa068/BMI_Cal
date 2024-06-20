// ignore_for_file: avoid_print

import 'dart:math';

class Brain{

  final int feet;
  final int inches;
  final int weight;
  late final int hieght;
  late final double _bmi;

  Brain(this.feet,this.inches,this.weight);


  int calHeight(){
    hieght = (feet * 12) + inches;
    print('height $hieght');
    return hieght;
  }

  String result(){
    _bmi = weight / pow((hieght * 0.0254), 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText(){

    if(_bmi >= 25.0){
      return 'Overweight';
    }
    else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
    
  } 

  String resultTip(){
    if(_bmi >= 25.0){
      return 'Focus on a balanced diet and regular physical activity..';
    }
    else if(_bmi >= 18.0){
      return 'Maintain your current lifestyle and balanced diet.';
    }
    else {
      return 'Consider eating more frequent, nutrient-rich meals';
    }
  }

}