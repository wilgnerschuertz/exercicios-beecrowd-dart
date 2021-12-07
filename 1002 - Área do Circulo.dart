import 'dart:io';
import 'dart:math';

void main() {
  const n = 3.14159;
  var raio = double.parse(stdin.readLineSync()!);
  var area = n * pow(raio, 2);
  var xarea = area.toStringAsFixed(4);
  print('A=$xarea');
}
