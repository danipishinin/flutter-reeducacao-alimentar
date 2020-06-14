import 'package:app_nutricao_gamificada/screens/login.dart';
import 'package:flutter/material.dart';

class CadastroSenha extends StatelessWidget {
  popupCadastro(BuildContext context) {
    // configura o button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login()));
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text("Cadastro concluido"),
      content: Text("Cadastro realizado com sucesso!"),
      actions: [
        okButton,
      ],
    );

    // exibe o dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {


        
        return alerta;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(children: <Widget>[
        Container(
          margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Insira uma senha',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/key.jpg'),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira uma senha',
                  labelText: 'Senha',
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 120,
                height: 40,
                child: FlatButton(
                  color: Colors.greenAccent,
                  child: Text(
                    "Avançar",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    popupCadastro(context);
                  },
                ),
              )
            ],
          ),
        )
      ])),
    );
  }
}
