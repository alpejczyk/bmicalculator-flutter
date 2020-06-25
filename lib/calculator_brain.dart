import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'Your BMI result is too high! You should stop eating those carbs fatty!';
    } else if (_bmi > 18.5) {
      return 'Your BMI result is quite alright. Keep up the good work!';
    } else {
      return 'Your BMI result is too low! Have you eaten today??';
    }
  }
}
