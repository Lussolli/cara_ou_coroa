import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  int resultado;
  Resultado(this.resultado);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  String _retornarCaminhoImagem(int valor) {
    if (valor == 0) {
      return 'imagens/moeda_coroa.png';
    }
    return 'imagens/moeda_cara.png';
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
            child: Image.asset(_retornarCaminhoImagem(this.widget.resultado)),
          ),
          GestureDetector(
            child: Image.asset('imagens/botao_voltar.png'),
            onTap: () {
              Navigator.pop(context);
            }
          ),
        ],
      ),
    );
  }
}