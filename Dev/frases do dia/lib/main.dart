import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Eu te amo",
    "Você é o amor da minha vida",
    "Sou loucamente apaixonado por você",
    "Eu te amo incondicionalmente",
    "Vou cuidar de você a vida todinha",
  ];

  var _fraseGerada = "Clique Abaixo";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);
    print(numeroSorteado);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eu te amo"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16), // Espaçamento nas laterais.
          //width: double.infinity,
          /*decoration: BoxDecoration(
              border: Border.all(width: 3, color: Colors.amber)
          ),*/
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget> [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                child: Text(
                  "Clique Aqui",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w500
                  ),
                ),

                onPressed: _gerarFrase,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
