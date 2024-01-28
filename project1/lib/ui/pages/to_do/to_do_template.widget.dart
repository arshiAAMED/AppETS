import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project1/ui/pages/to_do/to_do.class.dart';


class ToDoTemplate extends StatefulWidget {
  final ToDo todo;
  final String toDoTitre;
  final String toDoContenu;
  final String toDoStatut;
  final String toDoTemps;
  List<ToDo> curentToDoLst;

  final VoidCallback delete;
  //final VoidCallback modify;

  ToDoTemplate({ required this.todo, required this.toDoTitre,required this.toDoContenu,required this.toDoStatut, required this.toDoTemps, required this.delete, required this.curentToDoLst});

  @override
  State<ToDoTemplate> createState() => _ToDoTemplateState();
}

class _ToDoTemplateState extends State<ToDoTemplate> {

  TextEditingController titreController = TextEditingController();
  TextEditingController contenuController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.greenAccent.shade700,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CheckboxExample(
                  toDo: widget.todo,
                ),
                SizedBox(width:4.0),
                Text(
                  widget.toDoTitre,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 6.0),
            Text(
              widget.toDoContenu,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              widget.toDoTemps,
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              widget.toDoStatut, //EXTRA TO ADD IF POSSIBLE, IF EN COURS=RED, IF FINIT=GREY
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.grey[400],
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton.icon(
                  onPressed: widget.delete,
                  icon: Icon(Icons.delete),
                  style: ButtonStyle(
                    iconColor: MaterialStateProperty.all<Color>(Colors.black),
                    iconSize: MaterialStateProperty.all(14.0),
                  ),
                  label: Text(''),
                ),
              ],
            )
          ],

        ),
      ),
    );
  }
}

class CheckboxExample extends StatefulWidget {

  ToDo toDo;

  CheckboxExample({required this.toDo});

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          tristate: true,
          value: isChecked,
          checkColor: Colors.green[200],
          onChanged: (bool? value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
      ],
    );
  }
}
