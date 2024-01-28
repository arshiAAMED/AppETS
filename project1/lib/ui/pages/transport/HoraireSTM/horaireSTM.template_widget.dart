import 'package:flutter/material.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/detailsHoraire.dart';

class horaireSTMtemplate extends StatelessWidget {
  final String numeroBus;
  final String direction;
  final String localisation;
  final String minutes;

  horaireSTMtemplate({
    required this.numeroBus,
    required this.direction,
    required this.localisation,
    required this.minutes,
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
                    numeroBus,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.orangeAccent.shade200,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Icon(Icons.directions_bus_filled_rounded, color: Colors.grey.shade600),
                ],
              ),
              SizedBox(height: 6.0),
              Text(
                direction,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                localisation,
                style: TextStyle(
                  fontSize: 9.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      minutes,
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.orange.shade600,
                      ),
                    ),
                  ),
                  IconButton(onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DetailsHoraire()));
                  },
                      icon: Icon(Icons.arrow_forward_ios_outlined)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
