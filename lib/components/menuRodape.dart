import 'package:app_nutricao_gamificada/screens/cardapio.dart';
import 'package:app_nutricao_gamificada/screens/FAQ.dart';
import 'package:app_nutricao_gamificada/screens/conquistas.dart';
import 'package:app_nutricao_gamificada/screens/sobreApp.dart';
import 'package:flutter/material.dart';

class MenuRodape extends StatefulWidget {
  @override
  _MenuRodapeState createState() => _MenuRodapeState();
}

class _MenuRodapeState extends State<MenuRodape> {
  int _currentIndex = 0;

  List<String> titulo = [
    'Sobre',
    'Cardapio',
    'Conquistas',
    'Dúvidas Frequentes'
  ];

  Widget callPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return AboutUs();
      case 1:
        return Cardapio();
      case 2:
        return Conquistas();
      case 3:
        return Ajuda();
        break;
      default:
        return MenuRodape();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titulo[_currentIndex],
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: callPage(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          _currentIndex = value;

          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Sobre'),
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.restaurant),
              title: Text('Cardápio'),
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text('Conquistas'),
              backgroundColor: Colors.teal),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_outline),
              title: Text('Ajuda'),
              backgroundColor: Colors.teal),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        //foregroundColor: Colors.white,
        backgroundColor: Colors.teal[400],
        elevation: 0,
        child: Icon(Icons.email),
        onPressed: () {},
      ),
    );
  }
}
