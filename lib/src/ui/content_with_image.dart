import 'package:flutter/material.dart';
import 'package:gitfluttermadinavisit/app_localizations.dart';

class PageWithImage extends StatelessWidget{
  final String image;
  final String text;

  PageWithImage(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        padding: EdgeInsets.all(5.0),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Image.asset(
                'assets/images/$image',
//                  fit: BoxFit.fill,
                width: 150.0,
                height: 150.0,
              ),
              new Text(
                AppLocalizations.of(context).translate(text),
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
