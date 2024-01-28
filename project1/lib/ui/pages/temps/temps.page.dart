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
      appBar: AppBar(
        title: const Text('Temps et Parametres', style: TextStyle(fontSize: 35),),
        centerTitle: true,
      ) ,
      body: Center(
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
                children: [
                  Container(
                    width:300,
                    height:100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.red.shade400,
                              offset: Offset(1.0,20.0),
                              //blurRadius: 10,
                              spreadRadius: 5.0
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
                  Container(
                    //color: Colors.red[400],
                    alignment: Alignment.bottomCenter,
                      height: 553,
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                          child: Column(
                            //Par defaut : crossAxisAlignment: CrossAxisAlignment.center,
                            //Padding add
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [

                                Text('Settings', style: TextStyle(fontSize: 45)),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.red.shade400
                                    ),
                                  child: const Padding(
                                    padding: EdgeInsets.fromLTRB(50.0, 1.0, 50.0, 1.0),
                                    child: Text('Profil'),
                                  )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.red.shade400
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 1.0),
                                      child: Text('Langage'),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.red.shade400
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(47.0, 1.0, 47.0, 1.0),
                                      child: Text('Theme'),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.red.shade400
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 1.0),
                                      child: Text('Favorites'),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.red.shade400
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 1.0),
                                      child: Text('Location'),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.red.shade400
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(45.0, 1.0, 45.0, 1.0),
                                      child: Text('Privacy'),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        shadowColor: Colors.red.shade400
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 1.0, 30.0, 1.0),
                                      child: Text('Notifications'),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                  style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.red.shade400
                                  ),
                                  child: Text('Widget Customization'),
                                ),
                              ]
                          )
                      )
                  )
                ]
            )
        ),
      ),

    );
  }
}
