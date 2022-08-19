import 'dart:math';

class Logic {
  double calculateBMI(int weight, int height) {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }
}
