// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  
  // controladores
  final controlEmail = TextEditingController();
  final controlPassword = TextEditingController();

  // funcao para validar se o campo esta vazio ou nao
  /*validator(String value){
    if(value.isEmpty){
      return AlertDialog(
        title: Text("Oops!"),
        content: Text("Um dos campos não foi preenchido corretamente!"),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: Text("<FECHAR>"))
        ],
      );
    }
  }*/

  // chave formulario
  final _formKeyLogin = GlobalKey<FormState>();


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
        key: _formKeyLogin,
        child: Container(
          color: Color.fromARGB(255, 246, 244, 243),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              height: 400,
              width: 400,
              //color: Colors.grey[300],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      Text("LOGIN", style: TextStyle( color: Colors.black), textAlign: TextAlign.center,)
                  ],),
                  SizedBox(height: 20,),
        
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.fromLTRB(29, 0, 0, 0)),
                      Text("E-MAIL"),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 20,),
        
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
                  SizedBox(height: 20,),
        
                  TextButton(
                    //onPressed:() => Navigator.pop(context),
                    child: Text( "> ENTRAR", 
                      style: TextStyle( 
                        color: Colors.black
                      ), 
                      textAlign: TextAlign.center,
                    ),
      
                    onPressed: () {
                      if(_formKeyLogin.currentState!.validate()){
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
                  SizedBox(height: 10,),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed:() => Navigator.pushNamed(context, '/esqueceu-a-senha'),
                        child: Text( "ESQUECEU A SENHA?", 
                          style: TextStyle( 
                            color: Colors.black,
                            fontSize: 10,
                          ), 
                          textAlign: TextAlign.center,
                        )
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text("OU", 
                          style: TextStyle( 
                              color: Colors.black,
                              fontSize: 10,
                          ), 
                          textAlign: TextAlign.center,)
                        ],
                      ),
                      TextButton(
                        onPressed:() => Navigator.pushNamed(context, '/cadastro'),
                        child: Text( "CADASTRE-SE!", 
                          style: TextStyle( 
                            color: Colors.black,
                            fontSize: 10,
                          ), 
                          textAlign: TextAlign.center,
                        )
                      ),
                    ],
                  ),
      
        
        
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}