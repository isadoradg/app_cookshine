// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  //String dropDown = "<home>";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("COOKSHINE", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,)),
        leading: Image.asset('lib/images/icon_kitchen_gradient.png',height: 30,width: 30),
        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black)))
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            color: Colors.grey[100],
            width: 750,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: 200,
                  width: 750,
                  child: Icon(Icons.person, size: 60,),
                  //color: Colors.grey[100],
                  //alignment: Alignment.bottomCenter,
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(149, 0, 0, 0)),
                    Text("<NOME DE USUARIO>"),
                ],),
                Container(
                  padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '<username>',
                    ),
                  )
                ),
                SizedBox(height: 30,),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(149, 0, 0, 0)),
                    Text("<BIO>"),
                ],),
                Container(
                  height: 120,
                  padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: '<Descreva algo legal sobre você!>',
                    ),
                  )
                ),
                SizedBox(height: 10,),

                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(149, 0, 0, 0)),
                    Text("<SUAS ATIVIDADES>"),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(149, 0, 0, 0)),
                    Text("Por enquanto você não possui nenhuma atividade!"),
                  ],
                ),

                
              ],
            ),
          ),
        ),
      ),

    );
  }
}


