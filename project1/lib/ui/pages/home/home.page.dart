import 'package:flutter/material.dart';
import 'package:project1/ui/pages/home/widgets/Card.widget.dart';


class HomePage extends StatefulWidget {
  ScrollController? scrollController;
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text("Bienvenue"),
      ),
      body: SingleChildScrollView(
        controller: widget.scrollController,
        child: Column(
          children: [
            CardWidget(text: "Météo",path: '/meteo'),
            CardWidget(text: "Temps",path: '/temps'),
            CardWidget(text: "Transport",path: '/transport'),
            CardWidget(text: "TO-DO",path: '/to_do',),
            Row(
              children: [
                Expanded(child: CardWidget(text: "Paramètre",path: '/parametre',)),
                Expanded(child: CardWidget(text: "Profile",path: '/profile',)),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
