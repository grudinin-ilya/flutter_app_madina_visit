import 'package:flutter/material.dart';
import 'package:gitfluttermadinavisit/app_localizations.dart';
import 'package:gitfluttermadinavisit/src/provider/navigation_provider.dart';
import 'package:gitfluttermadinavisit/src/ui/menu_item.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final navigation = Provider.of<NavigationProvider>(context);
    List<Widget> _menuOptionWidgets = [];

    for (var i = 0; i <= 54; i++) {
      _menuOptionWidgets.add(new Container(
        child: MenuItem(
          title: AppLocalizations.of(context).translate('p$i'),
          onTap: () {
            Navigator.of(context).pop();
            navigation.updateNavigation('p$i');
          },
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Expanded(
              child: new SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  color: const Color(0xFF1BB5FD),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 200,
                        child: Container(
                          decoration: new BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(const Radius.circular(20.0)),
                              image: DecorationImage(
                                  image:
                                      new AssetImage('assets/images/top.jpg'),
                                  fit: BoxFit.cover)),
//                            margin: const EdgeInsets.only(top: 30.0),
                        ),
                      ),
                      Divider(
                        thickness: 0.5,
                        color: Colors.white.withOpacity(0.3),
                        indent: 32,
                        endIndent: 32,
                      ),
                      Container(
                        child: Column(children: _menuOptionWidgets),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Consumer<NavigationProvider>(
          builder: (context, navigationProvider, _) =>
              navigationProvider.getNavigation),
    );
  }
}
