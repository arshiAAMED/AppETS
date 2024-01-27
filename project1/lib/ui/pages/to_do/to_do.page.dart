import 'package:flutter/material.dart';
import 'package:project1/ui/pages/to_do/to_do.class.dart';
import 'package:project1/ui/pages/to_do/to_do_group.class.dart';
import 'package:project1/ui/pages/to_do/to_do_group_template.widget.dart';
import 'package:project1/ui/pages/to_do/to_do_template.widget.dart';

void main() => runApp(MaterialApp(
  home: ToDoPage(),
));


class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  static List<ToDo> toDoListEnCours = [
    ToDo(titre: 'Laver les plats', contenu: 'Ne pas oublier les verres dans le salon et acheter du detergent!',tempsStart: '2024-11-01',tempsEnd: '2024-11-02',statut: 'En Cours'),
    ToDo(titre: 'Arroser les plantes en haut', contenu: "Vider un des pots et replanter l'oromasdis avant de l'arroser",tempsStart: '2024-12-01',tempsEnd: '2024-12-02',statut: 'En Cours'),
    ToDo(titre: 'Appeler le dentiste', contenu: "J'ai peur.",tempsStart: '2024-11-04',tempsEnd: '2024-11-05',statut: 'En Cours'),
    ToDo(titre: 'Aller acheter X', contenu: "Au 3467 Rue Quai, H5T 9I9, 10h ouvert, 18h ferme.",tempsStart: '2024-11-04',tempsEnd: '2024-11-05',statut: 'En Cours'),
  ];

  static List<ToDo> toDoListFinis = [
    ToDo(titre: 'Laver les plats', contenu: 'Vider les morceaux briser dans la poubelle.',tempsStart: '2024-10-20',tempsEnd: '2024-10-21',statut: 'Finis'),
    ToDo(titre: 'Envoyer courriel a XXXXXX', contenu: "Pas oublier! XXX,XXXX,XXX,X,XXX!!!",tempsStart: '2024-10-19',tempsEnd: '2024-10-17',statut: 'Finis'),
    ToDo(titre: 'Appeler maman', contenu: "Ne pas mentionner le chien mort.",tempsStart: '2024-10-10',tempsEnd: '2024-10-11',statut: 'Finis'),
  ];


  //Debating whether or not to do a :
  //completed-non completed
  //or
  //Today-tomorrow-already finished
  //sorting system...


  static List<ToDoGroup> toDoGroup = [
    ToDoGroup(titre: "Tâche(s) en cours...", toDoLst: toDoListEnCours),
    ToDoGroup(titre: "Tâche(s) complétées...", toDoLst: toDoListFinis),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do'),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: ListView(
        children: toDoGroup.map((toDoChunk) => ToDoGroupTemplate(
          title: toDoChunk.titre,
          toDoLst: toDoChunk.toDoLst,
        )).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(
          Icons.add_box_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}
