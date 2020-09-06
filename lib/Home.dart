import 'package:flutter/material.dart';
import 'package:cara_ou_coroa/Resultado.dart';
import 'dart:math';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    List<String> itens = ['cara', 'coroa'];
    int numeroAleatorio = Random().nextInt(itens.length);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Resultado(itens[numeroAleatorio])
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61BD8C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32.0),
            child: Image.asset('imagens/logo.png'),
          ),
          GestureDetector(
            child: Image.asset('imagens/botao_jogar.png'),
            onTap: _exibirResultado,
          ),
        ],
      ),
    );
  }
}
