import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app_nutricao_gamificada/components/FAQ.dart';

class Ajuda extends StatefulWidget {
  @override
  _AjudaState createState() => _AjudaState();
}

class _AjudaState extends State<Ajuda> {
  //Conexão Fluter+Firebase
  final db = Firestore.instance;
  final String colecao = "FAQ";

  //Lista dinâmica para manipulação dos dados
  List<FAQ> lista = List();

  //Stream para "ouvir" o Firebase
  StreamSubscription<QuerySnapshot> listen;

  @override
  void initState() {
    super.initState();

    //cancelar o listen, caso a coleção esteja vazia.
    listen?.cancel();

    //retornar dados da coleção e inserir na lista dinâmica
    listen = db.collection(colecao).snapshots().listen((res) {
      setState(() {
        lista = res.documents
            .map((doc) => FAQ.fromMap(doc.data, doc.documentID))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    listen?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
          //fonte de dados
          stream: db.collection(colecao).snapshots(),

          //exibição dos dados
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                List<DocumentSnapshot> docs = snapshot.data.documents;
                return ListView.builder(
                    padding: EdgeInsets.all(4),
                    itemCount: docs.length,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.all(10),
                          child: ExpansionTile(
                            title: Text(
                              lista[index].pergunta,
                              style: TextStyle(fontSize: 20),
                            ),
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Text(
                                  lista[index].resposta,
                                  style: TextStyle(fontSize: 16),
                                ),
                              )
                            ],
                          ));
                    });
            }
          }),
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
