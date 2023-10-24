// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  
  // key do formulario de cadastro
  final _formKeyCadastro = GlobalKey<FormState>();

  // controller
  final controlNome = TextEditingController();
  final controlEmail = TextEditingController();
  final controlPassword = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,

        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black)))
        ]
      ),

      body:  Form(
        key: _formKeyCadastro,
        child: Container(
          color: Color.fromARGB(255, 246, 244, 243),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 500,
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
                      Text("CADASTRE-SE!", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,)
                  ],),
                  SizedBox(height: 20,),
      
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(29, 0, 0, 0)),
                      Text("NOME"),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      controller: controlNome,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "ex.: Ana Maria",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      validator: (value){
                        if(value!.isEmpty){
                          return "Digite um nome para cadastro.";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
        
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(29, 0, 0, 0)),
                      Text("E-MAIL"),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      controller: controlEmail,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "ex.: anamaria@gmail.com",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      // validador de email
                      validator: (value){
                        bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!);
                        if(value.isEmpty){
                          return "Digite um e-mail.";
                        }
                        else if(!emailValid){
                          return "Entre com um e-mail válido.";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
        
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(29, 0, 0, 0)),
                      Text("SENHA"),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      controller: controlPassword,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      obscureText: true,
                      validator: (value){
                        if(value!.isEmpty){
                          return "Digite uma senha.";
                        }
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
        
                  TextButton(
                    //onPressed:() => Navigator.pop(context),
                    child: Text( "> PROSSEGUIR", 
                      style: TextStyle( 
                        color: Colors.black
                      ), 
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {
                      if(_formKeyCadastro.currentState!.validate()){
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("Seus dados foram validados :)"),)
                        );
                        controlEmail.clear();
                        controlPassword.clear();
                        Navigator.pushNamed(context, "/home");
                      }
                    },
                  ),
                  //SizedBox(height: 10,),
        
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}