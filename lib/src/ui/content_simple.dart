import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:gitfluttermadinavisit/app_localizations.dart';


class SimplePage extends StatelessWidget{
  final String text;

  SimplePage(this.text);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.all(const Radius.circular(20.0)),
            boxShadow: [
              BoxShadow(
                color: Colors.cyan.withOpacity(0.3),
                spreadRadius: 10,
                blurRadius: 10,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: new Html(
              style: {
                "p": Style(
                    textAlign: TextAlign.justify,
                    fontFamily: 'Times New Roman',
                    fontSize: FontSize(18)),
              },
//              customTextStyle: TextStyle(
//                  fontFamily: 'Times New Roman', fontSize: 18),
//              customTextAlign: (_) => TextAlign.justify,
              data: AppLocalizations.of(context).translate(text)),
          padding: const EdgeInsets.all(0.0),
          margin: const EdgeInsets.only(top: 60.0, bottom: 50.0, left: 20.0, right: 20.0),

          alignment: Alignment.center,
        ),
      ),
    );
  }
}
