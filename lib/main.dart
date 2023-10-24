// ignore_for_file: prefer_const_constructors

import 'package:app_cookshine/view/tela_cadastro.dart';
import 'package:app_cookshine/view/tela_esqueceu_senha.dart';
import 'package:app_cookshine/view/tela_favoritos.dart';
import 'package:app_cookshine/view/tela_inicial.dart';
import 'package:app_cookshine/view/tela_receitas.dart';
import 'package:app_cookshine/view/tela_receitas_detalhes.dart';
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
      '/home': (context) => TelaInicial(),
      '/receitas': (context) => TelaReceitas(),
      '/receitas-detalhes': (context) => TelaReceitasDetalhes(),
      '/favoritos': (context) => TelaFavoritos(),
    },

  )
  );
}

