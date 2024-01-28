import 'package:flutter/material.dart';
import 'package:project1/ui/pages/air/air.page.dart';
import 'package:project1/ui/pages/home/home.page.dart';
import 'package:project1/ui/pages/meteo/meteo.page.dart';
import 'package:project1/ui/pages/parametre/parameter.page.dart';
import 'package:project1/ui/pages/profile/profile.page.dart';
import 'package:project1/ui/pages/temps/temps.page.dart';
import 'package:project1/ui/pages/to_do/to_do.page.dart';
import 'package:project1/ui/pages/transport/transport.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/meteo' : (context) => MeteoPage(),
        '/parametre' : (context) => ParametrePage(),
        '/profile' : (context) => ProfilePage(),
        '/temps' : (context) => TempsPage(),
        '/to_do' : (context) => ToDoPage(),
        '/transport' : (context) => TransportPage(),
        '/air': (context) => AirPage(),

      },
      initialRoute: '/air',
    );
  }
}

