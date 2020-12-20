import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  String calculatesBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double _bmi;
  String getResults() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight.Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight .Good Job!';
    } else {
      return 'You have a lower than normal body Weight.You can eat a bit more';
    }
  }
}
