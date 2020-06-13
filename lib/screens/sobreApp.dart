import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Esse é um software da área da saúde e bem-estar que tem como objetivo auxiliar seus usuários no processo de reeducação alimentar.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[900],  
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/images/habitos-saudaveis.jpg'),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'O app conta com planos personalizados de cardápios e hábitos a serem seguidos, levando em consideração as características e necessidades pessoais de cada usuário.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[900],
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/images/ler.jpg'),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Transformamos o seu objetivo no nosso também!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[900],
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 40,
                ),
                Image.asset('assets/images/vencer.jpg'),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Desenvolvido por: Daniele Pishinin Moreira',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[900],                 
                  ),
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/girl.jpg'),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Créditos imagens: http://www.freepik.com',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey[900],                 
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Designed by stories',
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.grey[900],                 
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
