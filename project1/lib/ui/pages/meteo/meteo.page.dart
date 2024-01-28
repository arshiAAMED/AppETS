import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:project1/ui/pages/meteo/widgets/top.meteo.temperature.widget.dart';
class MeteoPage extends StatefulWidget {
  String? city;
  ScrollController? scrollController;
   MeteoPage({super.key, this.city});

  @override
  State<MeteoPage> createState() => _MeteoPageState();
}

class _MeteoPageState extends State<MeteoPage> {
  //Déclaration de variables
  List<dynamic>? weatherData;
  int? temperature;
  int? feelsLike;
  int? tempMin;
  int? tempMax;
  String? typeTemp;
  String? image;

  @override
  initState() {
    String url =
        'https://api.openweathermap.org/data/2.5/forecast?q=${widget.city?? 'Montréal'}&appid=b7fea6db4ea8fd5392ff9f315b7bc981';
    getData(url);
  }
  getData(url) {
    http.get(
        Uri.parse(url),
        headers: {'accept':'application/json'}
    ).then((resp) {
      setState(() {
        weatherData = json.decode(resp.body)['list'];
        temperature = (weatherData?[0]['main']['temp'] - 273.15).round();
        feelsLike = (weatherData?[0]['main']['feels_like'] - 273.15).round();
        tempMin = (weatherData?[0]['main']['temp_min'] - 273.15).round();
        tempMax = (weatherData?[0]['main']['temp_max'] - 273.15).round();
        typeTemp = (weatherData?[0]['weather'][0]['main']);
        image = 'images/${weatherData?[0]['weather'][0]['main'].toLowerCase()}.png';
        print("$temperature");
        print(weatherData);
      });
    }).catchError((error) {
      print(error);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(backgroundColor: Colors.red[400],title: Text(widget.city?? 'Montréal'),),
        body:
        (weatherData == null)?const Center(child: CircularProgressIndicator(),):
            Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.only(left: 20, top: 50),
                   child: Column(
                     children: [
                       TopTemperatureWidget(city: "Montréal", feelsLike: feelsLike, temperature: temperature,
                         image: image,tempMax: tempMax,tempMin: tempMin,typeTemp: typeTemp,

                       ),
                       SizedBox(height: 50,),
                       SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Card(
                      elevation: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text("${weatherData?[0]['weather'][0]['main']}, minimum ${tempMin}C.",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                          SizedBox(height: 10,),
                          Divider(height: 2,color: Colors.black,),
                          SizedBox(height: 10,),
                          Expanded(
                            child: ListView.builder(
                              padding: EdgeInsets.only(left: 10,),
                            controller: widget.scrollController,
                            itemCount: weatherData?.length,
                            scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) =>
                                Text("${DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch(weatherData?[index]['dt'] * 1000000))}")
                            
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  )
                     ],
                   ),
                 ),

              ],
            )
    );
  }
}
