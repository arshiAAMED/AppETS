import 'package:flutter/material.dart';
import 'package:project1/ui/pages/meteo/meteo.page.dart';
class CardWidget extends StatefulWidget {
  String? text;
  String? path;
   CardWidget({super.key, this.text, this.path});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  Color cardColor = Colors.red.shade100;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () async {
        // Mise à jour de la couleur
        setState(() {
          cardColor = Colors.red.shade200;
        });

        // Navigation vers la nouvelle page
        await Navigator.pushNamed(context, '${widget.path}');

        // Code ici sera exécuté après le retour de la nouvelle page
        // Remettre la couleur par défaut
        setState(() {
          cardColor = Colors.red.shade100; // Remplacez par votre couleur par défaut
        });
      },

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: cardColor,
          elevation: 6,
          child: Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 150,
              child: Center(child: Text("${widget.text}",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                ),))
          ),
        ),
      ),
    );
  }
}
