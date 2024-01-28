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
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text(AppLocalizations.of(context)!.welcome),
      ),
      body: SingleChildScrollView(
        controller: widget.scrollController,
        child: Column(
          children: [
            CardWidget(text: AppLocalizations.of(context)!.weather,path: '/meteo'),
            CardWidget(text: AppLocalizations.of(context)!.time,path: '/temps'),
            CardWidget(text: "Transport",path: '/transport'),
            CardWidget(text: "TO-DO",path: '/to_do',),
            Row(
              children: [
                Expanded(child: CardWidget(text: AppLocalizations.of(context)!.settings,path: '/parametre',)),
                Expanded(child: CardWidget(text: AppLocalizations.of(context)!.profile,path: '/profile',)),
              ],
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
