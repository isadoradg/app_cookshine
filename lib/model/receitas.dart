// ignore_for_file: unused_element, prefer_collection_literals, non_constant_identifier_names

class Receitas {
  
  String receita;
  String ingredientes;
  String modoPreparo;
  //String link_imagem;

  Receitas(
    this.receita,
    this.ingredientes,
    this.modoPreparo,    
    //this.link_imagem,
  );

  // Método para pegar as informações da receita
  factory Receitas.fromJson(Map<String, dynamic> j) {
    return Receitas(
        j['receita'],
        j['ingredientes'],
        j['modoPreparo'],
        //j['link_imagem'],
    );
  }


  
}






