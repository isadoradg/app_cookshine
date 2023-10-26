// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_label, sort_child_properties_last

//import "dart:js";

//import "package:app_cookshine/util/constraints.dart";

// VERIFICAR FORMAS DE FAZER O DRAWER
// ESSE ARQUIVO ESTÁ EM REFORMA, VERIFIQUE O DRAWER DA PÁGINA TELA_HOME!
import "package:flutter/material.dart";

var drawerMenu = Drawer(
  backgroundColor: Colors.grey[100],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite) ),
      ListTile(
        leading: Icon(Icons.soup_kitchen_outlined),
        title: Text("R E C E I T A S"),
        onTap: (){
          
        },
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text("F A V O R I T O S"),
        onTap: (){

        },
      ),
      /*ListTile(
        leading: Icon(Icons.settings),
        title: Text("C O N F I G U R A Ç Õ E S"),
        onTap: (){

        },
      ),*/
      ListTile(
        leading: Icon(Icons.abc),
        title: Text("S O B R E"),
        onTap: () {
          //Navigator.pushNamed(, '/sobre');
        }
        
      ),
    ],
  ),
);



