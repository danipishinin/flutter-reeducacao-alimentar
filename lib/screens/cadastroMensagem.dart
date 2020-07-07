import 'package:app_nutricao_gamificada/components/mensagem.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TelaCadastroMensagem extends StatefulWidget {
  @override
  _TelaCadastroMensagemState createState() => _TelaCadastroMensagemState();
}

class _TelaCadastroMensagemState extends State<TelaCadastroMensagem> {
  //controles para os campos de texto
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMensagem = TextEditingController();

  //instância do Firebase
  var db = Firestore.instance;

  //retornar dados do documento a partir do idDocument
  void getDocumento(String idDocumento) async {
    //Recuperar o documento no Firestore
    DocumentSnapshot doc =
        await db.collection("messageBox").document(idDocumento).get();

    setState(() {
      txtNome.text = doc.data["nome"];
      txtEmail.text = doc.data["email"];
      txtMensagem.text = doc.data["mensagem"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // RECUPERAR o ID do Documento
    final String idDocumento = ModalRoute.of(context).settings.arguments;

    if (idDocumento != null) {
      if (txtNome.text == "" && txtEmail.text == "" && txtMensagem.text == "") {
        getDocumento(idDocumento);
      }
    }
    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                //CAMPO NOME
                Text("E"),
                TextField(
                  controller: txtNome,
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.w300),
                  decoration: InputDecoration(
                    icon: Icon(Icons.person_outline),
                    labelText: "Nome",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                //CAMPO EMAIL
                TextField(
                  controller: txtEmail,
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.w300),
                  decoration: InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Email",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //CAMPO MENSAGEM
                TextField(
                  controller: txtMensagem,
                  style: TextStyle(
                      color: Colors.brown, fontWeight: FontWeight.w300),
                  decoration: InputDecoration(
                    icon: Icon(Icons.message),
                    labelText: "Mensagem",
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //BOTÕES
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: RaisedButton(
                        color: Colors.teal[300],
                        child: Text("Enviar",
                            style:
                                TextStyle(color: Colors.white, fontSize: 20)),
                        onPressed: () {
                          //
                          // Inserir
                          //

                          inserir(
                              context,
                              Mensagem(idDocumento, txtNome.text, txtEmail.text,
                                  txtMensagem.text));
                        },
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 100,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.0),
                            side: BorderSide(color: Colors.teal[300])),
                        child: Text("Voltar",
                            style: TextStyle(
                                color: Colors.teal[300], fontSize: 20)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            )));
  }

  //
  // INSERIR
  //
  void inserir(BuildContext context, Mensagem mensagem) async {
    await db.collection("messageBox").add({
      "nome": mensagem.nome,
      "email": mensagem.email,
      "mensagem": mensagem.mensagem,
    });
    Navigator.pop(context);
  }
}
