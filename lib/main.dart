// ignore_for_file: prefer_const_constructors

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
    },

  )
  );
}

