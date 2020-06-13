import 'package:flutter/material.dart';

class TxtForm extends StatelessWidget {

  final _labelInput;
  TxtForm(this._labelInput,);
  @override
  Widget build(BuildContext context) {
    return Container(
          margin: new EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            style: TextStyle(fontSize:20),
            controller: null,
            decoration: InputDecoration(labelText: _labelInput),
          ),
        );
  }
}