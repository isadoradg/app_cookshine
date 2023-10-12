// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import "package:flutter/material.dart";

class TelaEsqueceuSenha extends StatefulWidget {
  const TelaEsqueceuSenha({super.key});

  @override
  State<TelaEsqueceuSenha> createState() => _TelaEsqueceuSenhaState();
}

class _TelaEsqueceuSenhaState extends State<TelaEsqueceuSenha> {

  // key do formulario
  final _formKeyEsqueceuSenha = GlobalKey<FormState>();

  // controller -> controle Email Esqueceu Senha (ES)
  final controlEmailES = TextEditingController();

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
        key: _formKeyEsqueceuSenha,
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
                    child: TextFormField(
                      controller: controlEmailES,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "ex.: anamaria@gmail.com",
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
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
        
                  TextButton(
                    //onPressed:() => Navigator.pop(context),
                    child: Text("> ENVIAR ORIENTAÇÕES", 
                      style: TextStyle( 
                        color: Colors.black
                      ), 
                      textAlign: TextAlign.center,
                      
                    ),
                    onPressed: () {
                      if(_formKeyEsqueceuSenha.currentState!.validate()){
                        showDialog(context: context, 
                          builder: (context) => AlertDialog(
                            title: Text("Opa! Um e-mail já foi enviado!"),
                            content: Text("Por favor, verifique se recebeu as orientações para alterar sua senha :)",),
                            actions: <Widget>[
                              TextButton(
                                //backgroundColor: Colors.white,
                                child: Text("<FECHAR>", style: TextStyle(fontSize: 10, color: Colors.black, ),),
                                onPressed: Navigator.of(context).pop)
                            ],
                          ),
                        );
                        
                        controlEmailES.clear();
                        
                      }
                    },
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
