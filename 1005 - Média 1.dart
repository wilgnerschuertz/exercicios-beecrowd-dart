import 'dart:io';

void main() {
  double? A = double.parse(stdin.readLineSync()!);
  double? B = double.parse(stdin.readLineSync()!);
  const p1 = 3.5;
  const p2 = 7.5;
  const peso = p1 + p2;
  var r1 = (p1 * A + p2 * B) / peso;
  var X = r1.toStringAsFixed(5);

  print('MEDIA = $X');
}
