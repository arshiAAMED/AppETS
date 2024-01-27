import 'package:flutter/material.dart';


class ToDoTemplate extends StatelessWidget {
  final String toDoTitre;
  final String toDoContenu;
  final String toDoStatut;
  final String toDoTempsStart;
  final String toDoTempsEnd;

  ToDoTemplate({ required this.toDoTitre,required this.toDoContenu,required this.toDoStatut, required this.toDoTempsStart, required this.toDoTempsEnd});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              toDoTitre,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              toDoContenu,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '$toDoTempsStart - $toDoTempsEnd',
              style: TextStyle(
                fontSize: 9.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              toDoStatut, //EXTRA TO ADD IF POSSIBLE, IF EN COURS=RED, IF FINIT=GREY
              style: TextStyle(
                fontSize: 9.0,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
