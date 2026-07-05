var calculateArea =
    ({required String shape, required double width, required double height}) {
      if (shape == 'rectangle') {
        return width * height;
      } else if (shape == 'triangle') {
        return 0.5 * width * height;
      } else {
        print('enter shape rectangle or triangle jaa');
        return 0.0;
      }
    };
var calculateVolume = ({required double radius, required double height}) {
  return (22 / 7) * (radius * radius) * height;
};
void main() {
  double rectArea = calculateArea(shape: 'rectangle', width: 3.5, height: 5.0);
  print('Rectangle Areab (w=3.5,h=5.0)  = ${rectArea.toStringAsFixed(2)}');

  double triArea = calculateArea(shape: 'triangle', width: 12, height: 7);
  print('Triangle Area (w=12,h=7) = ${triArea.toStringAsFixed(2)}');

  double cyVol = calculateVolume(radius: 2, height: 5.3);
  print('Cylinder Volume (r=2,h=5.3) = ${cyVol.toStringAsFixed(2)}');
}
