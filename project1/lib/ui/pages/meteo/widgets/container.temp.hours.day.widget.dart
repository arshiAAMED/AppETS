import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class ContainerHoursDayWidget extends StatelessWidget {
  dynamic? weatherDataCourrant;
   ContainerHoursDayWidget({super.key, this.weatherDataCourrant});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text("${DateFormat('HH:mm').format(DateTime.fromMicrosecondsSinceEpoch( weatherDataCourrant['dt']! * 1000000))}"),
            SizedBox(height: 10,),
            Image.asset("images/${weatherDataCourrant['weather'][0]['main'].toLowerCase()}.png",
              height: 30,
            ),
            SizedBox(height: 10,),
            Text("${(weatherDataCourrant['main']['temp'] - 273.15).round()}°"),
          ],
        ),
        Row(
          children: [
            Icon(Icons.invert_colors, color: Colors.blue,),
            Text(" ${((weatherDataCourrant['main']['humidity']/ weatherDataCourrant['main']['temp_max']) * 100).round()}%"),
          ],
        ),

      ],
    ));
  }
}
