import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gitfluttermadinavisit/app_localizations.dart';
import 'package:gitfluttermadinavisit/src/homepage.dart';
import 'package:gitfluttermadinavisit/src/provider/navigation_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryIconTheme: new IconThemeData(color: Colors.red),
        primaryColor: Colors.blue,
      ),

      // List all of the app's supported locales here
      supportedLocales: [
        Locale('ar', 'SA'),
        Locale('ru', 'RU'),
      ],
      // These delegates make sure that the localization data for the proper language is loaded
      localizationsDelegates: [
        // THIS CLASS WILL BE ADDED LATER
        // A class which loads the translations from JSON files
        AppLocalizations.delegate,
        // Built-in localization of basic text for Material widgets
        GlobalMaterialLocalizations.delegate,
        // Built-in localization for text direction LTR/RTL
        GlobalWidgetsLocalizations.delegate,
      ],
      // Returns a locale which will be used by the app
      localeResolutionCallback: (locale, supportedLocales) {
        // Check if the current device locale is supported
        for (var supportedLocale in supportedLocales) {
          if (supportedLocale.languageCode == locale.languageCode &&
              supportedLocale.countryCode == locale.countryCode) {
            return supportedLocale;
          }
        }
        // If the locale of the device is not supported, use the first one
        // from the list (English, in this case).
        return supportedLocales.first;
      },

//      home: ChangeNotifierProvider<NavigationProvider>(
//        create: (_) => NavigationProvider(),
//        child: HomePage(),
//      ),

      home: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Colors.cyan.withOpacity(0.3),
          // transparent status bar
          systemNavigationBarColor: Colors.cyan.withOpacity(0.3),
          // navigation bar color
          statusBarIconBrightness: Brightness.dark,
          // status bar icons' color
          systemNavigationBarIconBrightness:
          Brightness.dark, //navigation bar icons' color
        ),
        child: ChangeNotifierProvider<NavigationProvider>(
          create: (_) => NavigationProvider(),
          child: HomePage(),
        ),
      ),
    );
  }
}
