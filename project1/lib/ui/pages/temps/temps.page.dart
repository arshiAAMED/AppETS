import 'package:flutter/material.dart';

class TempsPage extends StatefulWidget {
  const TempsPage({super.key});

  @override
  State<TempsPage> createState() => _TempsPageState();
}

class _TempsPageState extends State<TempsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Temps et Parametres'),
        centerTitle: true,
      ) ,
      body: Center(
          child:Container(
            alignment: Alignment.topCenter,
              width:300,
              height:100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.red.shade400,
                    offset: Offset(4.0,-270.0),
                    //blurRadius: 5,
                    spreadRadius: 1.0
                  ),
                  const BoxShadow(
                      color: Colors.white,
                      offset: Offset(-4.0,-280.0),
                      //blurRadius: 6,
                      spreadRadius: 1.0
                  )
                ]
              ),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('12:00:00 AM/PM', style: TextStyle(fontSize: 30),),
                  Text('Janvier 27 2024', style: TextStyle(fontSize: 30),),
                ],
              )
          )
      ),
    );
  }
}
