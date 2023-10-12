// ignore_for_file: prefer_const_constructors

import 'package:app_cookshine/view/tela_cadastro.dart';
import 'package:app_cookshine/view/tela_esqueceu_senha.dart';
import 'package:app_cookshine/view/tela_sobre.dart';
import 'package:flutter/material.dart';

import 'view/tela_home.dart';
import 'view/tela_login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "cookshine",
    
    initialRoute: '/cookshine',
    routes:{
      '/cookshine': (context) => TelaHome(),
      '/login': (context) => TelaLogin(),
      '/esqueceu-a-senha': (context) => TelaEsqueceuSenha(),
      '/sobre': (context) => TelaSobre(),
      '/cadastro': (context) => TelaCadastro(),
    },

  )
  );
}

