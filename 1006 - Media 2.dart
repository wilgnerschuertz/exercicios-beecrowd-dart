import 'dart:io';

void main() {
  double? A = double.parse(stdin.readLineSync()!);
  double? B = double.parse(stdin.readLineSync()!);
  double? C = double.parse(stdin.readLineSync()!);
  const p1 = 2;
  const p2 = 3;
  const p3 = 5;
  const peso = p1 + p2 + p3;
  var r1 = (p1 * A + p2 * B + p3 * C) / peso;
  var X = r1.toStringAsFixed(1);

  print('MEDIA = $X');
}
