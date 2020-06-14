import 'package:app_nutricao_gamificada/screens/cadastroSenha.dart';
import 'package:flutter/material.dart';

class CadastroLogin extends StatelessWidget {
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
                'Insira seu email',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Image.asset('assets/images/login.jpg'),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Insira seu email',
                  labelText: 'Email',
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
                          ), onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CadastroSenha()));
                      },),
                      )
            ],
          ),
        )
      ])),
    );
  }
}
