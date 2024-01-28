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
    ToDo(titre: 'Laver les plats', contenu: 'Ne pas oublier les verres dans le salon et acheter du detergent!',toDoTemps: "2022-10-11 - 2023-10-11",statut: 'En Cours'),
    ToDo(titre: 'Arroser les plantes en haut', contenu: "Vider un des pots et replanter l'oromasdis avant de l'arroser",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'En Cours'),
    ToDo(titre: 'Appeler le dentiste', contenu: "J'ai peur.",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'En Cours'),
    ToDo(titre: 'Aller acheter X', contenu: "Au 3467 Rue Quai, H5T 9I9, 10h ouvert, 18h ferme.",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'En Cours'),
    ToDo(titre: 'Laver les plats', contenu: 'Vider les morceaux briser dans la poubelle.',toDoTemps: "2022-10-11 - 2023-10-11",statut: 'Finis'),
    ToDo(titre: 'Envoyer courriel a XXXXXX', contenu: "Pas oublier! XXX,XXXX,XXX,X,XXX!!!",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'Finis'),
    ToDo(titre: 'Appeler maman', contenu: "Ne pas mentionner le chien mort.",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'Finis'),
  ];

  static List<ToDo> toDoListFinis = [
    ToDo(titre: 'Laver les plats', contenu: 'Vider les morceaux briser dans la poubelle.',toDoTemps: "2022-10-11 - 2023-10-11",statut: 'Finis'),
    ToDo(titre: 'Envoyer courriel a XXXXXX', contenu: "Pas oublier! XXX,XXXX,XXX,X,XXX!!!",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'Finis'),
    ToDo(titre: 'Appeler maman', contenu: "Ne pas mentionner le chien mort.",toDoTemps: "2022-10-11 - 2023-10-11",statut: 'Finis'),
  ];


  //Debating whether or not to do a :
  //completed-non completed
  //or
  //Today-tomorrow-already finished
  //sorting system...


  static List<ToDoGroup> toDoGroup = [
    ToDoGroup(titre: "Je dois...", toDoLst: toDoListEnCours),
    //ToDoGroup(titre: "Tâche(s) complétées...", toDoLst: toDoListFinis),
  ];

  TextEditingController titreController = TextEditingController();
  TextEditingController contenuController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController statusController = TextEditingController();


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
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  scrollable: true,
                  title: Text('Ajouter un To-Do'),
                  content: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Titre',
                              icon: Icon(Icons.title),
                            ),
                            maxLength: 25,
                            controller: titreController,
                            validator: (value){
                              if (value!.isEmpty) {
                                return 'Veuiller entrer un titre...';
                              }
                              return null;
                            }
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Contenu',
                              icon: Icon(Icons.message_rounded),
                            ),
                            controller: contenuController,
                            validator: (value){
                              if (value!.isEmpty) {
                                return 'Veuiller entrer du contenu...';
                              }
                              return null;
                            }
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Temps de debut et de fin',
                              icon: Icon(Icons.date_range_outlined),
                            ),
                            controller: dateController,
                            validator: (value){
                              if (value!.isEmpty) {
                                return 'Veuiller entrer vos dates...';
                              }
                              return null;
                            }
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Status',
                                icon: Icon(Icons.circle_outlined),
                              ),
                              controller: statusController,
                              validator: (value){
                                if (value!.isEmpty) {
                                  return 'Veuiller entrer le status...';
                                }
                                return null;
                              }
                          ),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                        child: Text("Créer"),
                        onPressed: () {
                          setState(() {
                            ToDo temp = ToDo(titre: titreController.text, contenu: contenuController.text,toDoTemps: dateController.text,statut: statusController.text);
                            print(temp.titre);
                            toDoListEnCours.add(temp);
                            titreController.clear();
                            contenuController.clear();
                            dateController.clear();
                            statusController.clear();
                            Navigator.of(context).pop();
                          });
                        })
                  ],
                );
              });
        },

        child: Icon(
          Icons.add_box_rounded,
          color: Colors.white,
        ),
        backgroundColor: Colors.red[500],
      ),
    );
  }
}

//OPTION RADIO BUTTON
enum Option { Urgent, Facultatif }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  Option? _option = Option.Facultatif;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Facultatif'),
          leading: Radio<Option>(
            value: Option.Facultatif,
            groupValue: _option,
            onChanged: (Option? value) {
              setState(() {
                _option = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Urgent'),
          leading: Radio<Option>(
            value: Option.Urgent,
            groupValue: _option,
            onChanged: (Option? value) {
              setState(() {
                _option = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

