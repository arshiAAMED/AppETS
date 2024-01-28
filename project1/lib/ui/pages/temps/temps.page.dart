import 'package:flutter/material.dart';
import 'package:project1/main.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:project1/l10n/l10n.dart';

class TempsPage extends StatefulWidget {
  const TempsPage({super.key});

  @override
  State<TempsPage> createState() => _TempsPageState();
}

class _TempsPageState extends State<TempsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent[200],
        title:  Text(AppLocalizations.of(context)!.timesettings, style: TextStyle(fontSize: 35),),
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
                              color: Colors.blue.shade900,
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

                                Text(AppLocalizations.of(context)!.settings, style: TextStyle(fontSize: 45)),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue.shade900,
                                      shadowColor: Colors.black,
                                      side: BorderSide()
                                    ),
                                  child:  Padding(
                                    padding: const EdgeInsets.fromLTRB(50.0, 1.0, 50.0, 1.0),
                                    child: Text(AppLocalizations.of(context)!.profile , style:  TextStyle(color: Colors.white),),
                                  )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        shadowColor: Colors.black,
                                        side: BorderSide()                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 1.0),
                                      child: Text(AppLocalizations.of(context)!.language, style:  TextStyle(color: Colors.white),),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        shadowColor: Colors.black,
                                        side: BorderSide()
                                    ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(47.0, 1.0, 47.0, 1.0),
                                      child: Text(AppLocalizations.of(context)!.theme , style:  TextStyle(color: Colors.white),),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        shadowColor: Colors.black,
                                        side: BorderSide()                                            ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 1.0),
                                      child: Text(AppLocalizations.of(context)!.favorites , style:  TextStyle(color: Colors.white),),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        shadowColor: Colors.black,
                                        side: BorderSide()                                            ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(40.0, 1.0, 40.0, 1.0),
                                      child: Text(AppLocalizations.of(context)!.location , style:  TextStyle(color: Colors.white),),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        shadowColor: Colors.black,
                                        side: BorderSide()                                            ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(45.0, 1.0, 45.0, 1.0),
                                      child: Text(AppLocalizations.of(context)!.privacy , style:  TextStyle(color: Colors.white),),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.blue.shade900,
                                        shadowColor: Colors.black,
                                        side: BorderSide()                                            ),
                                    child:  Padding(
                                      padding: const EdgeInsets.fromLTRB(30.0, 1.0, 30.0, 1.0),
                                      child: Text(AppLocalizations.of(context)!.notifications, style:  TextStyle(color: Colors.white),),
                                    )
                                ),
                                ElevatedButton(onPressed: (){
                                },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue.shade900,
                                      shadowColor: Colors.black,
                                      side: BorderSide()                                          ),
                                  child:  Text(AppLocalizations.of(context)!.widgetcustomization , style:  TextStyle(color: Colors.white),),
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
