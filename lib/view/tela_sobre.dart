// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";

class TelaSobre extends StatefulWidget {
  const TelaSobre({super.key});

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
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

      body: Row(
        //color: Color.fromARGB(255, 246, 244, 243),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          // nome e foto do desenvolvedor
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                //alignment: Alignment.,
                child: Center(child: Image.asset('lib/images/profile-dev-isadora.jpeg', height: 234, width: 234,),),   // alignment: Alignment.bottomCenter,),)),)
              ),
              SizedBox(height: 15,),

              Row(
                children: [
                  Text("Desenvolvedora mirim: Isadora Domingos"),
                ],
              ),
              Row(
                children: [
                  Text("Cursa ADS na FATEC de Ribeirão Preto"),
                ],
              ),
            ],
          ),

          // sobre o app
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("<TEMA>",),
              Text("A escolha desse tema (abordagem) é de familiaridade da desenvolvedora/autora."),
              Text("Ela ama a cozinha: seus utensílios e principalmente a parte de confeitaria. Essa"),
              Text("é uma pequena parte que ela expõe suas ideias e faz seus experimentos, testando"),
              Text("novas receitas e jeitos de obter resultado e qualidade sem desperdício exacerbado"),
              Text("de ingredientes."),
              
              SizedBox(height: 35,),

              Text("<OBJETIVO>",),
              Text("Trazer receitas e dicas de cozinha. Procurando juntar o útil ao agradável:"),
              Text("comida com a diversão e o gosto por aprender a cozinhar!"),
              
              SizedBox(height: 35,),

              Text("<POR QUE COOKSHINE?>"),
              Text("Segundo a desenvolvedora:"),
              Text("> COOK = cozinhar"),
              Text("> SHINE = brilho, remete a alegria, diversão e sorrisos")

            ]
          )
        ]

      )

    );  
  }
}