import 'package:flutter/material.dart';
import 'package:project1/ui/pages/transport/Disponibilit%C3%A9sBIXI/dispoBIXI.template_widget.dart';

import 'dispoBIXIclass.dart';

void main() => runApp(MaterialApp(
  home: BIXI(),
));

class BIXI extends StatefulWidget {
  const BIXI({super.key});

  @override
  State<BIXI> createState() => _PageBIXIState();
}

class _PageBIXIState extends State<BIXI> {
  static List<dispoBIXI> lstBIXI = [
    dispoBIXI(localisation: 'de la Montagne / Notre-Dame', bixi: '4 BIXI', docks: '19 Docks'),
    dispoBIXI(localisation: 'Peel / Notre-Dame', bixi: '5 BIXI', docks: '42 Docks'),
    dispoBIXI(localisation: 'Ottawa / du Séminaire', bixi: '15 BIXI', docks: '8 Docks'),
    dispoBIXI(localisation: 'des Bassins / du Séminaire', bixi: '23 BIXI', docks: '12 Docks'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disponibilités BIXI'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: ListView(
        children: lstBIXI.map((dispoBIXIItem) => dispoBIXItemplate(
          localisation: dispoBIXIItem.localisation,
          bixi: dispoBIXIItem.bixi,
          docks: dispoBIXIItem.docks,
        )).toList(),
      ),
    );
  }
}
