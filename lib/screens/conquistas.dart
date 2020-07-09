import 'package:flutter/material.dart';

class Conquistas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Metas atingidas: (4) ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    print("click juice");
                    exibirInfosMissoes(
                        context,
                        Text(
                          "Por conseguir tomar 1 copo de suco natural 4x na semana",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.orange),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/fruits.jpg',
                          height: MediaQuery.of(context).size.height * 0.30,
                        ));
                  },
                  child: new Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/fruits.jpg',
                      width: MediaQuery.of(context).size.width * 0.10,
                      height: MediaQuery.of(context).size.height * 0.10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    print("click meditation");
                    exibirInfosMissoes(
                        context,
                        Text(
                          "Completar 7 dias de meditação",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.pink),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/meditation.jpg',
                          height: MediaQuery.of(context).size.height * 0.30,
                        ));
                  },
                  child: new Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/meditation.jpg',
                      width: MediaQuery.of(context).size.width * 0.10,
                      height: MediaQuery.of(context).size.height * 0.0,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    print("click books");
                    exibirInfosMissoes(
                        context,
                        Text(
                          "Descobrir um novo hobbie!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/leitor.jpg',
                          height: MediaQuery.of(context).size.height * 0.30,
                        ));
                  },
                  child: new Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/leitor.jpg',
                      width: MediaQuery.of(context).size.width * 0.05,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                InkWell(
                  onTap: () {
                    print("click exercises");
                    exibirInfosMissoes(
                        context,
                        Text(
                          "1 mês afastado do sedentarismo!",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.blue),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          'assets/images/exercises.jpg',
                          height: MediaQuery.of(context).size.height * 0.30,
                        ));
                  },
                  child: new Container(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 3.0,
                              blurRadius: 5.0)
                        ],
                        color: Colors.white),
                    child: Image.asset(
                      'assets/images/exercises.jpg',
                      width: MediaQuery.of(context).size.width * 1,
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ),
                )
              ],
            ),
          ],
        ));
  }

  exibirInfosMissoes(BuildContext context, Text txt, Image image) {
    // configura o button
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.of(context).pop(context);
      },
    );

    // configura o  AlertDialog
    AlertDialog alerta = AlertDialog(
      title: image,
      content: txt,
      actions: [
        okButton,
      ],
    );

    // exibe o dialog
    showDialog(
      context: context,
      builder: (
        BuildContext context,
      ) {
        return alerta;
      },
    );
  }
}
