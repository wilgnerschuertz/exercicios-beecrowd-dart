import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  int _escolhaUsuario = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Radio Button Example"),
      ),
      body: Container(
        child: Column(
          children:  [
            RadioListTile(
                title: Text("Masculino"),
                value: 1,
                groupValue: _escolhaUsuario,
                onChanged: (int? escolha){
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                }
            ),
            RadioListTile(
                title: Text("Feminino"),
                value: 2,
                groupValue: _escolhaUsuario,
                onChanged: (int? escolha){
                  setState(() {
                    _escolhaUsuario = escolha!;
                  });
                }
            ),
            ElevatedButton(
                child: const Text(
                    "Salvar",
                    style: TextStyle(
                      fontSize: 20
                    ),
                ),
              onPressed: (){
                  print("Resultado: " + _escolhaUsuario.toString());
              },
            )
          //   const Text("Masculino"),
          //   Radio(
          //       value: "1",
          //       groupValue: _escolhaUsuario,
          //       onChanged: (String? escolha){
          //         setState(() {
          //           _escolhaUsuario = escolha!;
          //         });
          //       }
          //   ),
          //   const Text("Feminino"),
          //   Radio(
          //       value: "2",
          //       groupValue: _escolhaUsuario,
          //       onChanged: (String? escolha){
          //         setState(() {
          //           _escolhaUsuario = escolha!;
          //         });
          //       }
          //   ),
          ],
        ),
      ),
    );
  }
}
