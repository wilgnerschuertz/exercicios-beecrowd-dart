import 'dart:io';

void main() {
  String name = stdin.readLineSync()!; //Nome do Funcionário
  double? salaryBase = double.parse(stdin.readLineSync()!); // Salário fixo
  double? commission = double.parse(stdin.readLineSync()!); // Comissão

  var percentCommission = commission * (15 / 100);

  var result =
      percentCommission + salaryBase; // Resultado do Salário + Comissão
  var salaryReceved =
      result.toStringAsFixed(2); // Formatação para 2 casas decimais

  print('TOTAL = R\$ $salaryReceved');
}
