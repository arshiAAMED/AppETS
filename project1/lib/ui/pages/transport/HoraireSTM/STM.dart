import 'package:flutter/material.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/horaireSTM.template_widget.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/horaireSTMclass.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/horaireSTMgroup.class.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/horaireSTMgroup.template_widget.dart';

void main() => runApp(MaterialApp(
  home: PageSTM(),
));


class PageSTM extends StatefulWidget {
  const PageSTM({super.key});

  @override
  State<PageSTM> createState() => _PageSTMState();
}

class _PageSTMState extends State<PageSTM> {

  static List<horaireSTM> lstHoraire = [
    horaireSTM(numeroBus: '35',direction: 'East',localisation: 'Notre-Dame / de la Montagne', minutes: '18 minutes'),
    horaireSTM(numeroBus: '57',direction: 'East',localisation: 'Guy / William', minutes: '17 minutes'),
    horaireSTM(numeroBus: '107',direction: 'South',localisation: 'Guy / Paxton', minutes: '15 minutes'),
    horaireSTM(numeroBus: '193',direction: 'East',localisation: 'Jarry / Lorimier', minutes: '21 minutes'),
    horaireSTM(numeroBus: '10',direction: 'South',localisation: 'Lorimier / Jarry', minutes: '25 minutes'),
    horaireSTM(numeroBus: '45',direction: 'South',localisation: 'Papineau / Jarry', minutes: '32 minutes'),
  ];

  static List<HoraireGroup> horaireGroup = [
    HoraireGroup(titre: "Horaire de Bus", horaireSTMlst: lstHoraire),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horaire STM'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent[200],
      ),
      body: ListView(
        children: horaireGroup.map((HoraireSTMChunk) => HoraireSTMgroupeTemplate(
          titre: HoraireSTMChunk.titre,
          horaireSTMlst: HoraireSTMChunk.horaireSTMlst,
        )).toList(),
      ),
    );
  }
}
