// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class TelaEsqueceuSenha extends StatefulWidget {
  const TelaEsqueceuSenha({super.key});

  @override
  State<TelaEsqueceuSenha> createState() => _TelaEsqueceuSenhaState();
}

class _TelaEsqueceuSenhaState extends State<TelaEsqueceuSenha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 246, 244, 243),
        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black)))
        ]
      ),

      body:  Container(
        color: Color.fromARGB(255, 246, 244, 243),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 400,
            width: 400,
            //color: Colors.grey[300],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('lib/images/icon_kitchen_gradient.png',height: 30,width: 30,),
                    Text("COOKSHINE", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,),
                  ],
                ),
                SizedBox(height: 20,),
      
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("ESQUECEU A SENHA? NÃO SE PREOCUPE!", 
                      style: TextStyle( 
                        color: Colors.black
                      ), 
                      textAlign: TextAlign.center,),
                ],),
                SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("DIGITE NO CAMPO ABAIXO SEU E-MAIL CADASTRADO",
                      style: TextStyle( 
                        color: Colors.black,
                        fontSize: 12,
                      ), 
                      textAlign: TextAlign.center,),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("E ENVIAREMOS AS ORIENTAÇÕES PARA RECUPERAR",
                  style: TextStyle( 
                        color: Colors.black,
                        fontSize: 12,
                      ), 
                      textAlign: TextAlign.center,),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("SEU ACESSO :)",
                  style: TextStyle( 
                        color: Colors.black,
                        fontSize: 12,
                      ), 
                      textAlign: TextAlign.center,),
                ],),
                SizedBox(height: 18,),
      
                Row(
                  children: [
                    Padding(padding: EdgeInsets.fromLTRB(29, 0, 0, 0)),
                    Text("E-MAIL"),
                  ],
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "ex.: anamaria@gmail.com",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                ),     
                SizedBox(height: 15,),
      
                TextButton(
                  onPressed:() => Navigator.pop(context),
                  child: Text("> ENVIAR ORIENTAÇÕES", 
                    style: TextStyle( 
                      color: Colors.black
                    ), 
                    textAlign: TextAlign.center,
                  )
                ),


              ]
            ),
          ),
        ),
      ),


    );
  }
}
