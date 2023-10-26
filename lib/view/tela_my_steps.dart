// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, sort_child_properties_last, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import "package:app_cookshine/model/my_steps.dart";
import "package:flutter/material.dart";

class TelaMySteps extends StatefulWidget {
  const TelaMySteps({super.key});

  @override
  State<TelaMySteps> createState() => _TelaMyStepsState();
}

class _TelaMyStepsState extends State<TelaMySteps> {

  // declaracao de uma lista dinamica
  List<MyStepsReceitas> lista = [];
  // indice da lista
  var index;
  // controladores
  var tituloReceita = TextEditingController();
  var ingredienteReceita = TextEditingController();
  var descricaoReceita = TextEditingController();

  // metodo de inicializacao
  @override
  void initState(){
    lista.add(MyStepsReceitas("Exemplo de título da receita", "Aqui você escreve os ingredientes da receita", "Aqui você descreve o modo de preparo da receita"));
    index = -1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Crie a sua própria receita!', style: TextStyle( color: Colors.black))),
        
        //desativar o botão de voltar do AppBar
        automaticallyImplyLeading: false,

        backgroundColor: Color.fromARGB(255, 246, 244, 243),

        actions:[
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("< VOLTAR", style: TextStyle( color: Colors.black)))
        ]
      ),

      body: Container(
        color: Color.fromARGB(255, 246, 244, 243),
        child: Center(
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: 500,
            //color: Colors.grey[300],
            child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: adicionarReceita(), 
                  ),
                
                  Expanded(
                    flex: 2,
                    child: listarReceitas(), 
                  ),
                ],
              ),
          ),
        ),
      ),

    );

  }

  adicionarReceita(){

    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        
        child: Column(
          children: [
            
            Row(
              children: [
                Text("TITULO"),
              ],
            ),
            TextField(
              controller: tituloReceita, 
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 20,),

            Row(
              children: [
                Text("INGREDIENTES"),
              ],
            ),
            TextField(
              controller: ingredienteReceita, 
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(),
              ),
            ),
            
            SizedBox(height: 20,),

            Row(
              children: [
                Text("DESCREVA O PASSO A PASSO DA RECEITA"),
              ],
            ),
            TextField(
              controller: descricaoReceita, 
              decoration: InputDecoration(
                labelStyle: TextStyle(fontSize: 18),
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              height: 20,
            ),

            // botão salvar 
            TextButton(
              onPressed: () {
                // verificar se os campos nao estao vazios
                if(tituloReceita.text.isNotEmpty && ingredienteReceita.text.isNotEmpty && descricaoReceita.text.isNotEmpty){
                  
                  if (index == -1) {
                    // add receita ma lista (alterar estado -> set state)
                    setState(() {
                      lista.add(MyStepsReceitas(tituloReceita.text, ingredienteReceita.text, descricaoReceita.text));
                    });
                    mensagem('Receita adicionada com sucesso!');
                  } else {
                    // atualizar receita existente
                    setState(() {
                      lista[index] = MyStepsReceitas(tituloReceita.text, ingredienteReceita.text, descricaoReceita.text);
                      index = -1;
                    });
                    mensagem('Receita atualizada com sucesso!');
                  }
                  tituloReceita.clear();
                  ingredienteReceita.clear();
                  descricaoReceita.clear();
                } 
                else {
                  mensagem('Ops! Revise se algum dos campos está vazio!');
                }

              }, 
              child: Text('<SALVAR>', 
                style: TextStyle(
                  color: Colors.black
                )
              ),
            )
            
          ],
          
        ),
      ),
    );
  }

  // mostrar receitas da lista
  listarReceitas() {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView.builder(
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(lista[index].tituloReceita),
              // remover
              trailing: IconButton(
                icon: Icon(Icons.delete_outline),
                onPressed: () {
                  setState(() {
                    lista.removeAt(index);
                    mensagem('Receita removida com sucesso!');
                  });
                },
              ),

              // selecionar um elemento da lista p/ atualizar -> alterar forma de fazer
              onTap: () {
                /*setState(() {
                  this.index = index;
                  txtNome.text = lista[index].nome;
                  txtTelefone.text = lista[index].telefone;
                });*/
              },
              tileColor: (this.index == index)
                      ? Colors.blueAccent.shade100.withOpacity(0.2)
                      : Colors.white

            ),
          );
        }
      ),

    );
  }

  // exibir uma mensagem
  mensagem(msg){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 2),
        content: Text(msg),
      ),
    );
  }


}






