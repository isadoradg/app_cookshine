// ignore_for_file: prefer_const_constructors, prefer_collection_literals, unused_element, unused_field

import 'dart:convert';

//import 'package:app_cookshine/view/tela_favoritos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:app_cookshine/model/receitas.dart';

class TelaReceitas extends StatefulWidget {
  const TelaReceitas({super.key});

  @override
  State<TelaReceitas> createState() => _TelaReceitasState();
}

class _TelaReceitasState extends State<TelaReceitas> {

  //Lista Dinâmica de objetos da classe de receitas
  //List<Receitas> dados = <Receitas>[];
  List<Receitas> dados = [];

  // lista pra armazenar a receita adicionada
  final List<Receitas> salvos = [];

  //new - armazenar palavras/receitas favoritadas pelo usuario
  //Set<Receitas> salvos = Set<Receitas>();
  //final bool jaFoiSalva = false;

  //CARREGAR DADOS DO ARQUIVO JSON e coloca o conteúdo dentro de uma lista
  carregarDados() async {
    final String arq = await rootBundle.loadString('lib/data/receitas.json');
    final dynamic d = await json.decode(arq); // verifica se o arquivo está no formato json
    setState(() { // corre por todo o arquivo e coloca numa lista
      d.forEach((item) {
        dados.add(Receitas.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await carregarDados();
    });
  }

    /*Widget contruirLinha(Receitas receita){
    final bool jaFoiSalva = salvos.contains(receita);

    return ListView.builder(
            itemCount: dados.length,
            itemBuilder: (context, index) { //percorre e cria uma lista com os nomes das receitas
              return Card(
                child: ListTile(
                  title: Text(dados[index].receita),
                  //trailing: Icon(),
                  onTap: (){
                    Navigator.pushNamed(context,'/receitas-detalhes', arguments: dados[index]);
                  },
                  trailing: Icon(
                    jaFoiSalva ? Icons.star_rounded : Icons.star_border_rounded,
                    color: jaFoiSalva ? Colors.yellowAccent[700] : null,
                  ),
                ),
              );
            },
          );
    }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas', style: TextStyle( color: Colors.black)),
        
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
            itemCount: dados.length,
            itemBuilder: (context, index) { //percorre e cria uma lista com os nomes das receitas
              final isFavorito = salvos.contains(dados[index]);
              return Card(
                child: ListTile(
                  title: Text(dados[index].receita),
                  onTap: (){
                    Navigator.pushNamed(context,'/receitas-detalhes', arguments: dados[index]);
                  },
                  /*trailing: IconButton(
                    isFavorito ? Icons.star_rounded : Icons.star_border_rounded,
                    color: isFavorito ? Colors.yellowAccent[700] : null,
                  ),*/
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        if (isFavorito){
                          salvos.remove(dados[index]);
                        } else{
                          salvos.add(dados[index]);
                        }
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => TelaFavoritos(), settings: RouteSettings(arguments: _salvos[index])));
                      });
                    },
                    icon: isFavorito 
                      ? Icon(Icons.star, color: Colors.yellowAccent[700]) 
                      : Icon(Icons.star_border_rounded, color: null),
                  ),
                  
                ),
              );
            },
          ),
          //child: contruirLinha(dados),
          /*ListView.builder(
            itemCount: dados.length,
            itemBuilder: (context, index) { //percorre e cria uma lista com os nomes das receitas
              return Card(
                child: ListTile(
                  title: Text(dados[index].receita),
                  //trailing: Icon(),
                  onTap: (){
                    Navigator.pushNamed(context,'/receitas-detalhes', arguments: dados[index]);
                  },
                ),
              );
            },
          ),*/
        ),
    );
  }
}


