// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import "package:flutter/material.dart";

var sobre = Row(
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
                  Text("Cursa ADS na Fatec de Ribeirão Preto"),
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

      );



