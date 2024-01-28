import 'package:flutter/material.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/detailsHoraire.dart';

class dispoBIXItemplate extends StatelessWidget {
  final String localisation;
  final String bixi;
  final String docks;

  dispoBIXItemplate({
    required this.localisation,
    required this.bixi,
    required this.docks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    localisation,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.blueGrey.shade700,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Icon(Icons.directions_bike_rounded, color: Colors.greenAccent.shade700),
                ],
              ),
              SizedBox(height: 6.0),
              Text(
                docks,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      bixi,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.red.shade300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
