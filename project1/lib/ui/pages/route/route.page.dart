import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project1/ui/pages/route/avertissement.dart';
import 'package:project1/ui/pages/route/reseau.dart';
import 'package:project1/ui/pages/route/reseau_card.dart';
import 'avertissement_card.dart';
import 'avertissement.dart';
import 'reseau.dart';

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
  
  List<Reseau> reseaus = [
    Reseau(De:'Ile des Soeurs', A: 'Pont Samuel-De Champlain Rive-Sud', Type: 'Chaussée', TypeNom: 'Dégagée et sèche', VisibiliteEtDirection: 'Visibilité', VEDNom: 'Bonne'),
    Reseau(De: "De Montréal (arr. Ahuntsic) et Laval Sur l'Autoroute Papineau, incluant le pont Papineau-Leblanc", A: 'la riviere des Prairies Entre les boulevards Henri-Bourassa et Concorde', Type: 'Entrave ', TypeNom: 'Majeure', VisibiliteEtDirection: 'Direction', VEDNom: 'Nord'),
    Reseau(De: 'Pont Honore-Mercier Rive-Sud', A: 'Pont Honore-Mercier a Montreal', Type: 'Chaussée', TypeNom: 'Dégagée et sèche', VisibiliteEtDirection: 'Visibilite', VEDNom: 'Bonne')
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title:  Text(AppLocalizations.of(context)!.montrealtraffic),
        centerTitle: true,
      ),
      //body: Center(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Text(AppLocalizations.of(context)!.warnings, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold), )
              ],
            ),
            Center(
              child: Container(
                height: 250,
                child: ListView(
                  children: avertissements.map((avertissement) => AvertissementCard(avertissement : avertissement)).toList()
                ),
              ),
            ),
              Padding(
                padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(AppLocalizations.of(context)!.statetraffic, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold), )
                    ],
              ),
              ),
            Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 30),
                height: 305,
                child: ListView(
                  children: reseaus.map((reseau) => ReseauCard(reseau: reseau)).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


