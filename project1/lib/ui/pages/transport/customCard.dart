import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String titreNouvelle;
  final String description;
  final IconData icon;
  final String direction;
  final String location;
  final String minutes;
  final List<String> nextBusStops;

  CustomCard({
    required this.title,
    required this.titreNouvelle,
    required this.description,
    required this.icon,
    required this.direction,
    required this.location,
    required this.minutes,
    required this.nextBusStops,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 2.0,
            offset: Offset(0.0, 5.0),
          ),
        ],
      ),
      child: Card(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red.shade300,
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Icon(icon, color: Colors.red.shade400),
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
              SizedBox(height: 3.0),
              Text(
                location,
                style: TextStyle(
                  fontSize: 9.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                minutes,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.0),
              Divider(height: 1.0),
              SizedBox(height: 8.0),
              Text(
                titreNouvelle,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                description,
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 6.0),
              Divider(height: 10.0),
              SizedBox(height: 6.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: nextBusStops
                    .expand((stop) => [
                  Text(stop, style: TextStyle(fontSize: 11.0)),
                  Divider(height: 1.0),
                  SizedBox(height: 2.0),
                  Icon(Icons.circle_outlined, size: 5,),
                  Icon(Icons.circle_outlined, size: 5,),
                  Icon(Icons.circle_outlined, size: 5,)
                ])
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
