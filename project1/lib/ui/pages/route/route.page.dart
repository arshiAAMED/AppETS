import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project1/ui/pages/route/avertissement.dart';
import 'avertissement_card.dart';
import 'avertissement.dart';

class RoutePage extends StatefulWidget{

  @override
  State<RoutePage> createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage>{

  List<Avertissement> avertissements = [
    Avertissement(text: 'Circulation au ralenti A-20 Vers A-10 est, direction Montréal, circulation sur voies déviées, largeur des voies réduite à 3,9 mètres., direction OUEST, Brossard, durée indéterminée. Cause : Travaux prévus ultérieurement.'),
    Avertissement(text: 'Circulation au ralenti A-20 vers A-10 ouest, circulation sur voies déviées et largeur des voies à 3,9 mètres., direction OUEST, Brossard, durée indéterminée. Cause : Travaux prévus ultérieurement.'),
    Avertissement(text: 'Tunnel Louis-Hippolyte-La Fontaine : Circulation à contresens, 2 voies disponibles en direction nord, 1 voie disponible en direction sud. Largeur de chaque voie en nord réduite à 3,2 mètres. Cause : Travaux routiers.Véhicules lourds :- En direction ouest, vers Montréal, à partir de De Mortagne, garder obligatoirement la voie droite.- En direction sud, vers Longueuil, à partir de la rue Sherbrooke, circulation interdite dans la voie droite.')
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title:  Text(AppLocalizations.of(context)!.montrealtraffic),
        centerTitle: true,
      ),
      //body: Center(
      body: Column(
        children: [
          Container(
                child: Column(
                  children: [
                    Text(AppLocalizations.of(context)!.warnings, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold), )
                  ],
                ),
          ),
          Center(
            child: Container(
              height: 650,
              child: ListView(
                children: avertissements.map((avertissement) => AvertissementCard(avertissement : avertissement)).toList()
              ),
            ),
          ),
        ],
      ),
        // child: Align(
        //   alignment: Alignment.topCenter,
        //   child: Column(
        //     children: [
        //       Container(
        //         //width: 400,
        //         //height: 300,
        //         //color: Colors.red,
        //         child: Padding(
        //           padding: const EdgeInsets.all(8.0),
        //           child: Column(
        //             children: [
        //               Text(AppLocalizations.of(context)!.warnings, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold), )
        //             ],
        //           ),
        //         )
        //       ),
        //       SizedBox(height: 10),
        //       Container(
        //           decoration: BoxDecoration(
        //             color: Colors.white,
        //             borderRadius: BorderRadius.circular(20),
        //             boxShadow: [
        //               BoxShadow(
        //                 color: Colors.red.shade400,
        //                 offset: Offset(1.0,5.0)
        //               ),
        //             ],
        //           ),
        //         child: const Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child:Row(
        //             mainAxisSize: MainAxisSize.max,
        //             mainAxisAlignment: MainAxisAlignment.start, // Center the content horizontally
        //             children: <Widget>[
        //               SizedBox(height: 4),
        //               SizedBox(width: 50),
        //               Text('Circulation au ralenti A-20 Vers A-10 est,\n direction Montréal, circulation sur voies \n déviées, largeur des voies réduite à 3,9 mètres. \ndirection OUEST, Brossard, durée indéterminée\nCause : Travaux prévus ultérieurement.'),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10),
        //       Container(
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(20),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.red.shade400,
        //                 offset: Offset(1.0,5.0)
        //             ),
        //           ],
        //         ),
        //         child: const Padding(
        //           padding: EdgeInsets.all(10.0),
        //           child:Row(
        //             mainAxisSize: MainAxisSize.max,
        //             mainAxisAlignment: MainAxisAlignment.start, // Center the content horizontally
        //             children: <Widget>[
        //               SizedBox(height: 4),
        //               SizedBox(width: 50),
        //               Text('Circulation au ralenti A-20 vers A-10 ouest\ncirculation sur voies déviées et largeur des\n voies à 3,9 mètres., direction OUEST,\n Brossard, durée indéterminée. \nCause : Travaux prévus ultérieurement.'),
        //             ],
        //           ),
        //         ),
        //       ),
        //       SizedBox(height: 10),
        //       Container(
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.circular(20),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.red.shade400,
        //                 offset: Offset(1.0,5.0)
        //             ),
        //           ],
        //         ),
        //         child: const Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child:Row(
        //             mainAxisSize: MainAxisSize.min,
        //             mainAxisAlignment: MainAxisAlignment.start, // Center the content horizontally
        //             children: <Widget>[
        //               SizedBox(height: 5),
        //               SizedBox(width: 50),
        //               Text('Tunnel Louis-Hippolyte-La Fontaine : Circulation\n à contresens, 2 voies disponibles en direction\n nord, 1 voie disponible en direction sud. Largeur\n de chaque voie en nord réduite à 3,2 mètres.\n Cause : Travaux routiers.\nVéhicules lourds : - En direction ouest, \nvers Montréal, à partir de De Mortagne, \ngarder obligatoirement la voie droite. \n- En direction sud, vers Longueuil, à partir de\n la rue Sherbrooke, circulation interdite dans\n la voie droite.'),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Container(
        //         child:  Padding(
        //           padding: EdgeInsets.all(8.0),
        //             child: Column(
        //               children: [
        //                 Text(AppLocalizations.of(context)!.statetraffic, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold), )
        //               ],
        //         ),
        //       ),
        //       ),
        //
        //     ],
        //   ),
        // ),
      );
    //);
  }
}


