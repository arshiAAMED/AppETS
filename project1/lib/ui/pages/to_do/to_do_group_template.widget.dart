import 'package:flutter/material.dart';
import 'package:project1/ui/pages/to_do/to_do.class.dart';
import 'package:project1/ui/pages/to_do/to_do_template.widget.dart';

class ToDoGroupTemplate extends StatelessWidget {

  final String title;
  late final List<ToDo> toDoLst;
  ToDoGroupTemplate({ required this.title,required this.toDoLst});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.red[400],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Column(
              children: toDoLst.map((toDo) => ToDoTemplate(
                toDoTitre: toDo.titre,
                toDoContenu: toDo.contenu,
                toDoTempsStart: toDo.tempsStart,
                toDoTempsEnd: toDo.tempsEnd,
                toDoStatut: toDo.statut,
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

