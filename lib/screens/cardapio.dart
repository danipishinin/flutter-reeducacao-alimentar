import 'package:flutter/material.dart';

class Cardapio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      width: MediaQuery.of(context).size.width * 1,
      height: MediaQuery.of(context).size.height * 0.55,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.greenAccent,
            ),
            padding: EdgeInsets.all(30.0),
            alignment: Alignment.center,
            margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                Text(
                  'Salada de frutas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/meal-fruit.png',
                  height: 120,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '15',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      '95',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '40',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Min.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Calorias',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'XP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.greenAccent,
            ),
            padding: EdgeInsets.all(30.0),
            alignment: Alignment.center,
            margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                Text(
                  'Suco de morango',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/juice.png',
                  height: 120,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '10',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    Text(
                      '38',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '55',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Min.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Calorias',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'XP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
                    Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.greenAccent,
            ),
            padding: EdgeInsets.all(30.0),
            alignment: Alignment.center,
            margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.6,
            child: Column(
              children: [
                Text(
                  'Pizza Fit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 30,
                ),
                Image.asset(
                  'assets/images/pizza.png',
                  height: 120,
                  width: 200,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      '50',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      '138',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '105',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white38,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Min.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    Text(
                      'Calorias',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      'XP',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
