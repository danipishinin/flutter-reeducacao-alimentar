class FAQ {
  //Atributos
  String _id;
  String _pergunta;
  String _resposta;

  //Construtor
  FAQ(this._id, this._pergunta, this._resposta);

  //Getters
  String get id => _id;
  String get pergunta => _pergunta;
  String get resposta => _resposta;

  FAQ.map(dynamic obj) {
    this._id = obj['id'];
    this._pergunta = obj['pergunta'];
    this._resposta = obj['resposta'];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["pergunta"] = _pergunta;
    map["resposta"] = _resposta;
    return map;
  }

  //Converter um Mapa para o modelo de dados
  FAQ.fromMap(Map<String, dynamic> map, String id) {
    //Atribuir id ao this._id, somente se id não for
    //nulo, caso contrário atribui '' (vazio).
    this._id = id ?? '';
    this._pergunta = map["pergunta"];
    this._resposta = map["resposta"];
  }
}
