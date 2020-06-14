import 'package:app_nutricao_gamificada/components/logo.dart';
import 'package:app_nutricao_gamificada/components/menuRodape.dart';
import 'package:app_nutricao_gamificada/screens/cadastroLogin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          new Column(
            children: <Widget>[
              Logo(),
              Container(
                  margin: new EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'digite o seu email',
                          labelText: 'Email',
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'digite sua senha',
                          labelText: 'Senha',
                        ),
                      ),
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                height: 60.0,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => MenuRodape()));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  padding: EdgeInsets.all(0),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff11998e), Color(0xff38ef7d)],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Esqueci minha senha",
                style: TextStyle(color: Colors.teal),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        child: FlatButton(
                          child: Text(
                            "Não tem uma conta? Crie uma agora!",
                            style: TextStyle(color: Colors.teal),
                          ), onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => CadastroLogin()));
                      },),
                      )
                    ]),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
