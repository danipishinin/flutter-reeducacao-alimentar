
import 'package:app_nutricao_gamificada/screens/login.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(BeHealth());
}

class BeHealth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutriz',
      theme: ThemeData(
        primaryColor: Colors.teal[300],
        fontFamily: 'Montserrat',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Login(),
    );
  }
}
