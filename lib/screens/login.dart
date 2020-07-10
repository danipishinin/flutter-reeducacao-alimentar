import 'package:app_nutricao_gamificada/components/logo.dart';
import 'package:app_nutricao_gamificada/components/menuRodape.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

final FirebaseAuth mAuth = FirebaseAuth.instance;
TextEditingController emailController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();
String _email, _password;
// ignore: unused_element
final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (input) => _email = input,
                        decoration: const InputDecoration(
                          hintText: 'digite o seu email',
                          labelText: 'Email',
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.text,
                        onChanged: (input) => _password = input,
                        obscureText: true,
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
                  onPressed: loginUser,
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
                    ]),
              )
            ],
          ),
        ]),
      ),
    );
  }

  // ignore: missing_return
  Future<FirebaseUser> loginUser() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MenuRodape()));
    } catch (e) {
      popupEnvioMensagem(context);
    }
  }

  popupEnvioMensagem(BuildContext context) {
    // configura o button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop(context);
      },
    );
    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: Text(""),
      content: Text("Usuário não cadastrado ou senha/email incorreto!"),
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
}
