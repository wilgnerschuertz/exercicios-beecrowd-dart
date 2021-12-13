import 'dart:io';

void main() {
  int? number = int.parse(stdin.readLineSync()!); //Número do Funcionário
  int? hoursWork = int.parse(stdin.readLineSync()!); // Horas trabalhadas
  double? salaryBase = double.parse(stdin.readLineSync()!); // Valor da Hora.

  var result = salaryBase * hoursWork; // Multiplicação do salário e horas
  var salaryReceved = result.toStringAsFixed(2); // Formatação para 2

  print('NUMBER = $number');
  print('SALARY = U\$ $salaryReceved');
}
