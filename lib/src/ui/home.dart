import 'package:flutter/material.dart';
import 'package:gitfluttermadinavisit/app_localizations.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.all(5.0),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Image.asset(
                'assets/images/img3.png',
//                  fit: BoxFit.fill,
                width: 150.0,
                height: 150.0,
              ),
              new Text(
                AppLocalizations.of(context).translate('title'),
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontFamily: 'Times New Roman',
                  fontSize: 20,
                ),
              )
            ]),
      ),
    );
  }
}
