import 'package:flutter/material.dart';
import 'avertissement.dart';

class AvertissementCard extends StatelessWidget {

  final Avertissement avertissement;
  AvertissementCard({required this.avertissement});

  @override
  Widget build(BuildContext context) {
    return Card(
        shadowColor: Colors.red[400],
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Wrap(
            children: <Widget>[
              Icon(Icons.taxi_alert_sharp),
              Text(
                  avertissement.text,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[600]
                  )
              ),
              const SizedBox(height: 8.0),
            ],
          ),
        )
    );
  }
}