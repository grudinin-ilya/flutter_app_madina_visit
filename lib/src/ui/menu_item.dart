import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final Function onTap;

  const MenuItem({Key key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(children: <Widget>[
//        padding: const EdgeInsets.all(5.0),
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
          ],
        ),
        Divider(
          thickness: 0.5,
          color: Colors.white.withOpacity(0.5),
          indent: 10,
          endIndent: 10,
        ),
      ]),
    );
  }
}
