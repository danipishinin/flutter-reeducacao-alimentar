import 'package:flutter/material.dart';

class Cashback extends StatelessWidget {

  popupDesconto(BuildContext context){ 
    // configura o button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () { 
      Navigator.of(context).pop();
    },
  );
  // configura o  AlertDialog
  AlertDialog alerta = AlertDialog(
    title: Text("Código do cupom"),
    content: Text("O código poderá ser utilizado por uma única vez: X39PV4Y"),
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
          SizedBox(
            height: 20,
          ),
          Text("CUPONS DISPONÍVEIS:",style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(
            height: 30,
          ),
          ListTile(
            leading: Icon(
              Icons.loyalty,
              size: 50,
              color: Colors.greenAccent,
            ),
            title: Text("30% OFF HERBALIFE",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[900])),
            onTap: () {
              popupDesconto(context);
            },
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    ));
}
}
