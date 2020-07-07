class Mensagem {
  //Atributos
  String _id;
  String _nome;
  String _email;
  String _mensagem;

  //Construtor
  Mensagem(this._id, this._nome, this._email, this._mensagem);

  //Getters
  String get id => _id;
  String get nome => _nome;
  String get email => _email;
  String get mensagem => _mensagem;

  Mensagem.map(dynamic obj) {
    this._id = obj['id'];
    this._nome = obj['nome'];
    this._email = obj['email'];
    this._mensagem = obj['mensagem'];
  }

  //Converter os dados para um Mapa
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (_id != null) {
      map["id"] = _id;
    }
    map["nome"] = _nome;
    map["email"] = _email;
    map["mensagem"] = _mensagem;
    return map;
  }

  //Converter um Mapa para o modelo de dados
  Mensagem.fromMap(Map<String, dynamic> map, String id) {
    //Atribuir id ao this._id, somente se id não for
    //nulo, caso contrário atribui '' (vazio).
    this._id = id ?? '';
    this._nome = map["nome"];
    this._email = map["email"];
    this._mensagem = map["mensagem"];
  }
}
