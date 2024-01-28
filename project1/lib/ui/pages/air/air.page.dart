import 'package:flutter/material.dart';

class AirPage extends StatefulWidget {
  const AirPage({super.key});

  @override
  State<AirPage> createState() => _AirPageState();
}

class _AirPageState extends State<AirPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qualité de l'air"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: ListView(
        children: <Widget>[

        ],
      ),
    );
  }
}

//Current air quality, pollen ?