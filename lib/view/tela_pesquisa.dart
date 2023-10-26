// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class TelaPesquisa extends StatefulWidget {
  const TelaPesquisa({super.key});

  @override
  State<TelaPesquisa> createState() => _TelaPesquisaState();
}

class _TelaPesquisaState extends State<TelaPesquisa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Pesquise uma receita :)', style: TextStyle(color: Colors.black))),
        
        //desativar o botão de voltar do AppBar
        automaticallyImplyLeading: false,

        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black)))
        ]
      ),
    );
  }
}

