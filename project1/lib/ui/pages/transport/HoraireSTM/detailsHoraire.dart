import 'package:flutter/material.dart';
import '../customCard.dart';

void main() => runApp(MaterialApp(
  home: DetailsHoraire(),
));

class DetailsHoraire extends StatefulWidget {
  const DetailsHoraire({super.key});

  @override
  State<DetailsHoraire> createState() => _PageDetailsState();
}

class _PageDetailsState extends State<DetailsHoraire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details Horaire'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: CustomCard(
          title: '35',
          icon: Icons.directions_bus_filled_rounded,
          direction: 'South',
          location: 'Notre-Dame / de la Montagne',
          titreNouvelle: 'Nouvelles',
          description: 'Lorem ipsum dolor sit amet. Et voluptatem tempora qui laudantium eius ad blanditiis tempora id voluptatum velit aut maiores quas et amet voluptatem et impedit quia. Est quam illum quo omnis rerum vel facilis accusamus cum ratione quia. Et nesciunt natus sit facilis eius sit laborum porro est eveniet galisum cum quod praesentium quo corporis pariatur qui nostrum laudantium.',
          minutes: '15 minutes',
          nextBusStops: ["De la Montagne / William","De la Montagne / Ottawa", "De la Montagne / du Square-Gallery", "De la Montagne / du Square-Gallery", "De la Montagne / du Square-Gallery", "De la Montagne / du Square-Gallery", "De la Montagne / du Square-Gallery", "De la Montagne / du Square-Gallery"],
        ),
      ),
    );
  }
}
