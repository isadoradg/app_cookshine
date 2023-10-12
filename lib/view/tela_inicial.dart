// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String dropDown = "Sair";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COOKSHINE", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,),
        leading: Image.asset('lib/images/icon_kitchen_gradient.png',height: 30,width: 30,),
        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions: <Widget>[
          //Icon(Icons.person, ),
          DropdownButton<String>(
            value: dropDown, 
            icon: Icon(Icons.person, ),
            onChanged: (String? newValue){
              setState(() {
                dropDown = newValue!;
              });
            },
            items: [
              DropdownMenuItem(
                value: "Sair",
                child: Text("Sair"),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          )

        ],
      ),

      //body

    );
  }
}


