import 'package:flutter/material.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/horaireSTMclass.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/horaireSTM.template_widget.dart';

class HoraireSTMgroupeTemplate extends StatelessWidget {

  final String titre;
  late final List<horaireSTM> horaireSTMlst;
  HoraireSTMgroupeTemplate({ required this.titre,required this.horaireSTMlst});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.orangeAccent[200],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              titre,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Column(
              children: horaireSTMlst.map((horaireSTM) => horaireSTMtemplate(
                numeroBus: horaireSTM.numeroBus,
                direction: horaireSTM.direction,
                localisation: horaireSTM.localisation,
                minutes: horaireSTM.minutes,
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

