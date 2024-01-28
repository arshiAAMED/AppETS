import 'package:flutter/material.dart';
import 'package:project1/ui/pages/route/reseau.dart';
import 'reseau.dart';

class ReseauCard extends StatelessWidget {

  final Reseau reseau;
  ReseauCard({required this.reseau});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Expanded(
            child: Wrap(
              children: <Widget>[
                Text(
                    'DE:${reseau.De}',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[600]
                    )
                ),
                Text(
                    'A:${reseau.A}',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[600]
                    )
                ),
                Text(
                    reseau.Type,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[600]
                    )
                ),
                Text(
                    reseau.TypeNom,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]
                    )
                ),
                Text(
                    reseau.VisibiliteEtDirection,
                    style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey[600]
                    )
                ),
                Text(
                    reseau.VEDNom,
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[600]
                    )
                ),
                const SizedBox(height: 8.0),
              ],
            ),
          ),
        )
    );
  }
}