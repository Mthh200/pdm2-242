import 'package:flutter/material.dart';

class TelaIni extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar para a Tela2
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Tela2()),
            );
          },
          child: Text('Tela 2', selectionColor: Colors.pink),
        ),
      ),
    );
  }
}

class Tela2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Voltar para a Tela1
            Navigator.pop(context);
          },
          child: Text('Back', selectionColor: Colors.pink,),
        ),
      ),
    );
  }
}