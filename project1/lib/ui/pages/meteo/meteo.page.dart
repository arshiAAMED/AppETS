import 'package:flutter/material.dart';

class MeteoPage extends StatefulWidget {
  const MeteoPage({super.key});

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Center(child: Text("Meteo page")),
    );
  }
}
