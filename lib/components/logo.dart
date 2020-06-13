import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 150),
            Image.asset("assets/images/fruit-icon.png", height: 90),
            SizedBox(height: 10),
            Text(
              "Nutriz",
              style: TextStyle(
                fontFamily: 'Tenali',
                fontSize: 34,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
