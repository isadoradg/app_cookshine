// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import "package:app_cookshine/util/constraints.dart";
//import "package:app_cookshine/util/menu_drawer.dart";
import "package:flutter/material.dart";

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String dropDown = "<home>";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COOKSHINE", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,),
        leading: Image.asset('lib/images/icon_kitchen_gradient.png',height: 30,width: 30,),
        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions: <Widget>[
          
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => Navigator.pop(context),
            color: Colors.black, 
          ),
          /*DropdownButton<String>(
            value: dropDown, 
            //icon: Icon(Icons., ),
            onChanged: (String? newValue){
              setState(() {
                dropDown = newValue!;
              });
            },
            items: [
              /*DropdownMenuItem(
                value: "<home>",
                child: Text("Home"),//Icon(Icons.person, color: Colors.black),//Text(),
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              DropdownMenuItem(
                value: "<user>",
                child: Text("Perfil"),
                onTap: () {
                  Navigator.pushNamed(context, '/perfil');
                },
              ),*/
              DropdownMenuItem(
                value: "<sair>",
                child: Text("Sair"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          )*/

        ],
      ),

      body: Row(
        children: [
          
          Drawer(
            backgroundColor: Colors.grey[100],
            child: Column(
              children: [
                DrawerHeader(child: Icon(Icons.favorite) ),
                  ListTile(
                    leading: Icon(Icons.soup_kitchen_outlined),
                    title: Text("R E C E I T A S"),
                    onTap: (){
                      Navigator.pushNamed(context, '/receitas');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.star),
                    title: Text("F A V O R I T O S"),
                    onTap: (){
                      Navigator.pushNamed(context, '/favoritos');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.search),
                    title: Text("P E S Q U I S A R"),
                    onTap: (){
                      Navigator.pushNamed(context, '/buscar');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.abc),
                    title: Text("MY STEPS"),
                    onTap: (){
                      Navigator.pushNamed(context, '/criar-receita');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("P E R F I L"),
                    onTap: (){  
                      Navigator.pushNamed(context, '/perfil');
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.abc),
                    title: Text("S O B R E"),
                    onTap: () {
                      //Navigator.pushNamed(context, '/sobre');
                      //return sobre;
                      showDialog(
                        context: context, 
                        builder: (context) => 
                          AlertDialog(
                            title: Text("Opa! Tudo bem? Aqui está um pouco sobre o app!"),
                            content: sobre,
                            actions: <Widget>[
                              TextButton(
                                child: Text("<FECHAR>", style: TextStyle(fontSize: 10, color: Colors.black, ),),
                                onPressed: Navigator.of(context).pop
                              )
                            ],
                          ),
                      );
                    }
                  ),
                ],
            ),
          ),

        ],
      ),

    );
  }
}


