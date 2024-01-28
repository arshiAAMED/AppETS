import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;


import 'package:flutter/material.dart';

class AirPage extends StatefulWidget {

  String? categorie;
  String? polluantPrincipal;

  AirPage({super.key});

  @override
  State<AirPage> createState() => _AirPageState();
}

class _AirPageState extends State<AirPage> {

  //DECLARATION DES VARIABLES
  //AIR
  List<dynamic>? airData;
  String? categorie;
  String? polluantPrincipal;
  //POLLEN



  @override

  void initState() {
    String url = ' https://api.ambeedata.com/latest/by-lat-lng?lat=45&lng=-73';
    getData(url);
  }
  getData(url){

    http.get(Uri.parse(url), headers: {"x-api-key": "db382c4c9f39a3dbcefdcfa039fd2789132dcae5bd7ffaa2dc17a513e73834c4", 'accept': 'application/json'}).then((resp){
      setState((){
        airData = json.decode(resp.body)['list'];
        categorie = (airData?[0]);
        polluantPrincipal = (airData?[1]['aqiInfo']['pollutant']);
        print(categorie);
        print(polluantPrincipal);
      });
    }).catchError((error){
      print(error);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Qualité de l'air"),
        centerTitle: true,
        backgroundColor: Colors.red[400],
      ),
      body: ListView(
        children: <Widget>[
          Text('$categorie'),
          Text('$polluantPrincipal'),
        ],
      ),
    );
  }
}

//Current air quality: CATEGORY + MAIN POLLUTANT
//POLLEN air quality: daily info, have to know how to separate the details from the final comment idk