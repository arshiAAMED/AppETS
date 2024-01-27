import 'package:flutter/material.dart';

class TempsPage extends StatefulWidget {
  const TempsPage({super.key});

  @override
  State<TempsPage> createState() => _TempsPageState();
}

class _TempsPageState extends State<TempsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Temps page")),
    );
  }
}
