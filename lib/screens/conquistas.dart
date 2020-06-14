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
          Text("Metas atingidas:",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
          SizedBox(height: 40,),
          ListTile(
            leading: Image.asset('assets/images/plano-alimentar.png'),
            title: Text("Seguir o plano alimentar por 30 dias", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            subtitle: Text("2064xp",style: TextStyle(color: Colors.greenAccent[400], fontWeight: FontWeight.bold, fontSize: 14),),
            onTap: () { 
            },
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset('assets/images/apple.png'),
            title: Text("Comer ao menos 1 fruta por 7 dias seguidos", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            subtitle: Text("340xp",style: TextStyle(color: Colors.greenAccent[400], fontWeight: FontWeight.bold, fontSize: 14),),
            onTap: () { 
            },
          ),
          SizedBox(height: 20,),
          ListTile(
            leading: Image.asset('assets/images/book.png'),
            title: Text("Ler por 10min em 5 dias", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            subtitle: Text("200xp",style: TextStyle(color: Colors.greenAccent[400], fontWeight: FontWeight.bold, fontSize: 14),),
            onTap: () { 
            },
          ),   
        ],
      ),
    ));
  }
}
