import 'package:flutter/material.dart';
import 'package:project1/ui/pages/meteo/meteo.page.dart';
import 'package:project1/ui/pages/parametre/parameter.page.dart';
import 'package:project1/ui/pages/profile/profile.page.dart';
import 'package:project1/ui/pages/route/route.page.dart';
import 'package:project1/ui/pages/temps/temps.page.dart';
import 'package:project1/ui/pages/to_do/to_do.page.dart';
import 'package:project1/ui/pages/transport/transport.page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'l10n/l10n.dart';

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
        '/' : (context) => RoutePage(),
        '/meteo' : (context) => const MeteoPage(),
        '/parametre' : (context) => const ParametrePage(),
        '/profile' : (context) => const ProfilePage(),
        '/temps' : (context) => const TempsPage(),
        '/to_do' : (context) => const ToDoPage(),
        '/transport' : (context) => const TransportPage(),
        '/route' : (context) => RoutePage(),
      },
      supportedLocales: L10n.all,
      locale:const Locale('fr'),
      localizationsDelegates: const[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}

