// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import "package:flutter/material.dart";

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("COOKSHINE", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,),
        leading: Image.asset('lib/images/icon_kitchen_gradient.png',height: 30,width: 30,),
        backgroundColor: Color.fromARGB(255, 246, 244, 243),
        
        actions: [
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/cookshine'),
            child: Row(children: [
              Text("HOME", style: TextStyle( color: Colors.black),)
            ],)),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/sobre'),
            child: Row(children: [
              Text("SOBRE", style: TextStyle( color: Colors.black),)
            ],)),
          TextButton(
            onPressed: () => Navigator.pushNamed(context, '/login'),
            child: Row(children: [
              Text("LOGIN", style: TextStyle( color: Colors.black),)
            ],)),
            
        ],
      
      ),
      
      body: Center(
        child: Container(
          color: Color.fromARGB(255, 246, 244, 243),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text("OOPS! NÃO FOI POSSÍVEL CARREGAR O FEED.", 
                    style: TextStyle( 
                      color: Colors.black
                    ),
                  ),
                ]
              ),
              SizedBox(height: 20,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text("A página estava testando uma nova receita e perdeu-se na cozinha!", 
                    style: TextStyle( 
                      color: Colors.black
                    ),
                  ) ,
                ]
              ),
              SizedBox(height: 20,),
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Mas por enquanto, entre ou cadastre-se para ver se a encontra", 
                    style: TextStyle( 
                      color: Colors.black
                    ),
                  ), 
                  Text("por lá! E que tal testar uma nova receita também?", 
                    style: TextStyle( 
                      color: Colors.black
                    ),
                  ),
                ],
              ),
              /*Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  Text("Mas por enquanto, entre ou cadastre-se para ver se a encontra", 
                    style: TextStyle( 
                      color: Colors.black
                    ),
                  ), 
                  Text("por lá! E que tal testar uma nova receita também?", 
                    style: TextStyle( 
                      color: Colors.black
                    ),
                  ),
                ]
              ),*/
            ],
          ),
        ),
      )
    );
  }
}