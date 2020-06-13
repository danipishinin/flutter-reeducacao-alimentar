import 'package:flutter/material.dart';

class Conquistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
        child: new Container(
      margin: new EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 1,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // Card(
          //   child: InkWell(
          //     splashColor: Colors.blue.withAlpha(30),
          //     onTap: () {},
          //     child: Container(
          //         width: MediaQuery.of(context).size.width * 0.2,
          //         height: MediaQuery.of(context).size.height * 0.2,
          //         ),
          //   ),
          // ),
          ListTile(
            leading: Image.asset('assets/images/plano-alimentar.png'),
            title: Text("Seguir o plano alimentar por 30 dias", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            subtitle: Text("365/365",style: TextStyle(color: Colors.greenAccent[400], fontWeight: FontWeight.bold, fontSize: 14),),
            onTap: () { 
            },
          ),
        ],
      ),
    ));
  }
}
