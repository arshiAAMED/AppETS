import 'package:flutter/material.dart';
import 'package:project1/ui/pages/to_do/to_do.class.dart';
import 'package:project1/ui/pages/to_do/to_do_template.widget.dart';

class ToDoGroupTemplate extends StatefulWidget {

  final String title;
  late final List<ToDo> toDoLst;
  ToDoGroupTemplate({ required this.title,required this.toDoLst});

  @override
  State<ToDoGroupTemplate> createState() => _ToDoGroupTemplateState();
}

class _ToDoGroupTemplateState extends State<ToDoGroupTemplate> {

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      color: Colors.greenAccent[100],
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(height: 6.0),
            Column(
              children: widget.toDoLst.map((toDo) => ToDoTemplate(
                todo: toDo,
                toDoTitre: toDo.titre,
                toDoContenu: toDo.contenu,
                toDoTemps: toDo.toDoTemps,
                toDoStatut: toDo.statut,
                delete: () {
                  setState(() {
                    widget.toDoLst.remove(toDo);
                  });
                },
                curentToDoLst: widget.toDoLst,
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

