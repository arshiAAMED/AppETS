import 'package:flutter/material.dart';
import 'package:project1/ui/pages/home/widgets/Card.widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title: Text(AppLocalizations.of(context)!.welcome),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        controller: widget.scrollController,
        child: Column(

          children: [
            SizedBox(height:40.0),
            Text(
              "Le temps aujourd'hui est...",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[500],
              ),
            ),
            SizedBox(height:20.0),
            Container(
              width:300,
              height:100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.greenAccent.shade200,
                        offset: Offset(1.0,19.0),
                        //blurRadius: 10,
                        spreadRadius: 2.0
                    ),
                    const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0,15.0),
                      //blurRadius: 6,
                      spreadRadius: 1.0,
                    )
                  ]
              ),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('12:00:00 AM/PM', style: TextStyle(fontSize: 20),),
                    Text('Janvier 27 2024', style: TextStyle(fontSize: 20),),
                  ]
              ),
            ),
            SizedBox(height:40.0),
            Row(
              children: [
                Expanded(child: CardWidget(text: AppLocalizations.of(context)!.weather,path: '/meteo',img: 'weather-alert.png',)),
                Expanded(child: CardWidget(text: "Qualité de l'air",path: '/air',img: 'air-quality2.png')),
              ],
            ),
            CardWidget(text: "Transport",path: '/transport',img: 'bus.png'),
            CardWidget(text: "Routes",path: '/route',img: 'route.png'),
            CardWidget(text: "TO-DO",path: '/to_do',img: 'checklist.png'),
            Row(
              children: [
                Expanded(child: CardWidget(text: AppLocalizations.of(context)!.settings,path: '/temps',img: 'adjust.png')),
                Expanded(child: CardWidget(text: AppLocalizations.of(context)!.profile,path: '/profile',img: 'avatar.png')),
              ],
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
