// ignore_for_file: prefer_const_constructors, unused_field, prefer_final_fields

import 'package:app_cookshine/model/receitas.dart';
import 'package:flutter/material.dart';

class TelaFavoritos extends StatefulWidget {
  const TelaFavoritos({super.key});

  @override
  State<TelaFavoritos> createState() => _TelaFavoritosState();
}

class _TelaFavoritosState extends State<TelaFavoritos> {

  List<Receitas> salvos = [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Favoritos', style: TextStyle(color: Colors.black))),
        
        //desativar o botão de voltar do AppBar
        automaticallyImplyLeading: false,

        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black)))
        ]
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: salvos.length,
            itemBuilder: (context, index) { //percorre e cria uma lista com os nomes das receitas
              return Card(
                child: ListTile(
                  title: Text(salvos[index].receita),
                  onTap: (){
                    Navigator.pushNamed(context,'/receitas-detalhes', arguments: salvos[index]);
                  },
                  /*trailing: Icon(
                    jaFoiSalva ? Icons.star_rounded : Icons.star_border_rounded,
                    color: jaFoiSalva ? Colors.yellowAccent[700] : null,
                  ),*/
                  
                ),
              );
            },
          ),
      
        ),
    );
  }
}



