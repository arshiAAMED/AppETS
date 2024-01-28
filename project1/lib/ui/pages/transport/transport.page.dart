import 'package:flutter/material.dart';
import 'package:project1/ui/pages/transport/HoraireSTM/STM.dart';
//import 'package:project1/ui/pages/transport/mapScreen.dart';

import 'BIXI.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({super.key});

  @override
  State<TransportPage> createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport'),
        centerTitle: true,
        backgroundColor: Colors.red.shade400,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                  children: <Widget>[
                    const SizedBox(height: 8),
                    const Text('Horaire STM'),
                    SizedBox(width: 300),
                    Icon(Icons.directions_bus_filled_rounded),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => PageSTM()));
                      },
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
                  children: <Widget>[
                    const SizedBox(height: 8),
                    const Text('Horaire BIXI'),
                    SizedBox(width: 300),
                    Icon(Icons.directions_bike_rounded),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BIXI()));
                      },
                      icon: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MapScreen()));
        },
        child: Icon(Icons.map, color: Colors.red.shade400),
        backgroundColor: Colors.red.shade50,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,    */
    );
  }
}