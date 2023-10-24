// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_collection_literals, unused_local_variable, no_leading_underscores_for_local_identifiers, prefer_const_declarations

import 'package:flutter/material.dart';

import '../model/receitas.dart';

class TelaReceitasDetalhes extends StatefulWidget {
  const TelaReceitasDetalhes({super.key});

  @override
  State<TelaReceitasDetalhes> createState() => _TelaReceitasDetalhesState();
}

class _TelaReceitasDetalhesState extends State<TelaReceitasDetalhes> {
  @override
  Widget build(BuildContext context) {
    // condicional se é ou não um item da lista de favoritos
    //final bool condicional = false;
    // lista pra armazenar a receita adicionada
    final List<Receitas> _salvos = [];

    // receber o objeto passado como argumento
    var obj = ModalRoute.of(context)!.settings.arguments as Receitas;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da receita', style: TextStyle( color: Colors.black)),
        
        //desativar o botão de voltar do AppBar
        automaticallyImplyLeading: false,

        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black))
          )
        ]
      
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /*Container(
                    child: Center(child: Image.network('${obj.link_imagem}', ),),//, height: 100, width: 100,),),
                  ),*/
                  SizedBox(height: 10),
                  Text('Receita', style: TextStyle(fontSize: 22),),
                  Text(
                    '${obj.receita}',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 20),
                  Text('Ingredientes', style: TextStyle(fontSize: 22), textAlign: TextAlign.center,),
                  Container(
                    // altura
                    height: 100,
                    //comprimento
                    width: 470,
                    child: Text(
                      obj.ingredientes,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('Modo de Preparo', style: TextStyle(fontSize: 22),),
                  Container(
                    height: 350,
                    width: 470,
                    child: Text(
                      obj.modoPreparo,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // botao flutuante
      
      /*floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
        child: Icon(Icons.favorite,),
        onPressed: () {
          setState(() {
            if(condicional == false){
              condicional == true;
              _salvos.add(obj);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${obj.receita} adicionado aos favoritos.',
                  ),
                ),
              );
              //Navigator.pushNamed(context,'/favoritos', arguments: _salvos);
              //return 
            }
            if(condicional == true){
              condicional == false;
              _salvos.remove(obj);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${obj.receita} removido dos favoritos.',
                  ),
                ),
              );
            }
            
          });*/
          /*ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                '${obj.receita} adicionado aos favoritos.',
              ),
            ),
          );*/
          //Retornar a tela anterior
          //Navigator.pop(context);
        //},
      //),
    );
  }
}
