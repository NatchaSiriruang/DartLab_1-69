class Temperature {
  double _celsius = 0;

  double get celsius => _celsius;
  double get fahrenheit => _celsius * (9 / 5) + 32;

  set celsius(double temp) {
    if (temp < -273.15) {
      print('${temp} >>> Error : -273.15 celsius is Absolute Zero');
    } else {
      _celsius = temp;
      print('${temp} celsius >>> ${fahrenheit} fahrenheit');
    }
  }
}

void main() {
  var x = Temperature();
  x.celsius = 100;
  x.celsius = -53.4;
  x.celsius = -279;
}
