import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:componentes/src/routes/routes.dart';
import 'package:componentes/src/pages/alert_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'), // English, no country code
        Locale('es', 'ES'), // Spanish, no country code
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const HomePage()
      initialRoute: '/',
      routes: getAplicationRoutes(),
      // routes: <String, WidgetBuilder>{
      //   '/': (BuildContext context) => const HomePage(),
      //   'alert': (BuildContext context) => const AlertPage(),
      //   'avatar': (BuildContext context) => const AvatarPage()
      // },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (context) => const AlertPage());
      },
    );
  }
}
