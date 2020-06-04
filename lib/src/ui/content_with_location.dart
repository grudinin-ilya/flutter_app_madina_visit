import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_html/style.dart';
import 'package:gitfluttermadinavisit/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_html/flutter_html.dart';
import 'dart:io';

class PageWithLocation extends StatelessWidget {
  final String location;
  final String image;
  final String text;

  PageWithLocation(this.location, this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(const Radius.circular(20.0)),
          ),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                new Container(
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: new AssetImage('assets/images/$image'),
                      fit: BoxFit.fill,
                    ),
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
                  margin: const EdgeInsets.only(
                      bottom: 30.0, left: 20.0, right: 20.0),
                  alignment: Alignment.bottomRight,
                  width: 200.0,
                  height: 200.0,
                ),
                new Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(const Radius.circular(20.0)),
                  ),

                  child: OutlineButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                        AppLocalizations.of(context).translate('location')),
                    onPressed: () => _openMap(this.location),
                  ),
//                  color: const Color(0xFF8532a6),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.only(
                      bottom: 30.0, left: 20.0, right: 20.0),
                  alignment: Alignment.centerRight,
                  width: 40.0,
                  height: 40.0,
                ),
                new Container(
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
//                      defaultTextStyle: TextStyle(
//                          fontFamily: 'Times New Roman', fontSize: 18),
//                      customTextAlign: (_) => TextAlign.justify,
                      data: AppLocalizations.of(context).translate(text)),
                  padding: const EdgeInsets.all(0.0),
                  margin: const EdgeInsets.only(
                      bottom: 50.0, left: 20.0, right: 20.0),
                  alignment: Alignment.center,
                )
              ]),
          padding: const EdgeInsets.only(top: 60.0),
//          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
        ),
      ),
    );
  }

  _openMap(var link) async {
    // Android
//    var url = 'geo$link';
    var url = 'https://www.google.com/maps/search/${Uri.encodeFull(link)}';
    if (Platform.isIOS) {
      // iOS
      url = 'http://maps.apple.com/?q=$link';
    }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
