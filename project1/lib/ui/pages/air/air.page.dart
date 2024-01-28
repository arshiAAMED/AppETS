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

  String? lstAuTotal;

  String? c0;
  String? n02;
  String? ozone;
  String? pm10;
  String? pm25;
  String? s02;

  String? cite;
  String? nomplace;
  String? province;

  String? misajour;

  String? aqiIndex;
  String? aqiPollutant;
  String? aqiConcentration;
  String? aqiCategorie;




  @override

  void initState() {
    String url = 'https://api.ambeedata.com/latest/by-lat-lng?lat=45.50&lng=-73.56';
    getData(url);
  }
  getData(url){

    http.get(Uri.parse(url), headers: {"x-api-key": "db382c4c9f39a3dbcefdcfa039fd2789132dcae5bd7ffaa2dc17a513e73834c4", 'accept': 'application/json'}).then((resp){
      setState((){
        airData = json.decode(resp.body)['stations'];
        lstAuTotal = (airData?[0].toString());

        c0 = (airData?[0]['CO'].toString());//5
        n02 = (airData?[0]['NO2'].toString());//5
        ozone = (airData?[0]['OZONE'].toString());//5
        pm10 = (airData?[0]['PM10'].toString());
        pm25 = (airData?[0]['PM25'].toString());
        s02 = (airData?[0]['SO2'].toString());

        cite = (airData?[0]['city'].toString()); //2
        nomplace = (airData?[0]['placeName'].toString());//2
        province = (airData?[0]['state'].toString());//2

        misajour = (airData?[0]['updatedAt'].toString()); //1

        aqiIndex = (airData?[0]['AQI'].toString()); //3

        aqiPollutant = (airData?[0]['aqiInfo']['pollutant'].toString()); //4
        aqiConcentration = (airData?[0]['aqiInfo']['concentration'].toString());//4
        aqiCategorie = (airData?[0]['aqiInfo']['category'].toString());//4

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
          Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height:15.0),
                  Text('$misajour'),
                  Column(
                    children: <Widget>[
                      SizedBox(height:20.0),
                      Text(
                        '$cite, $province',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SizedBox(height:15.0),
                          Text(
                            '$nomplace',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[850],
                            ),
                          ),
                          SizedBox(height:15.0),
                          //MAYBE ADD A PICTURE HERE
                          Image.asset(
                            'images/air-quality.png',
                            color: Colors.black54,
                          ),
                          Card(

                            child: Padding(
                              padding: const EdgeInsets.all(12.0),

                              child:Column(
                                children: <Widget>[
                                  Text(
                                    'Index AQI',
                                    style: TextStyle(
                                      fontSize: 19.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                  Text(
                                    '$aqiIndex',
                                    style: TextStyle(
                                      fontSize: 27.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        color: Colors.red.shade200,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child:Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child:Column(
                                        crossAxisAlignment: CrossAxisAlignment.stretch,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children:<Widget>[

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Spécifiques: ',
                                                style: TextStyle(
                                                  fontSize: 18.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height:10.0),
                                              Text(
                                                'Pollutant: $aqiPollutant',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height:5.0),
                                              Text(
                                                'Concentration: $aqiConcentration',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height:5.0),
                                              Text(
                                                'Sévérité: $aqiCategorie',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              SizedBox(height:5.0),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height:20.0),
                          Card(
                            child:Padding(
                              padding: const EdgeInsets.all(12.0),

                              child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.stretch,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:<Widget>[
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Informations au sujet de l'air:",
                                          style: TextStyle(
                                            fontSize: 19.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:10.0),
                                        Text(
                                          'CO: $c0',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:5.0),
                                        Text(
                                          'NO2: $n02',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:5.0),
                                        Text(
                                          'OZONE: $ozone',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:5.0),
                                        Text(
                                          'PM10: $pm10',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:5.0),
                                        Text(
                                          'PM25: $pm25',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:5.0),
                                        Text(
                                          'S02: $s02',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(height:5.0),
                                      ],
                                    ),
                                  ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//Current air quality: CATEGORY + MAIN POLLUTANT
//POLLEN air quality: daily info, have to know how to separate the details from the final comment idk