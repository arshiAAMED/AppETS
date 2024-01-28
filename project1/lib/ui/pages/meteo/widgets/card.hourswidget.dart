import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project1/ui/pages/meteo/widgets/container.temp.hours.day.widget.dart';
class CardHoursWidget extends StatelessWidget {
  ScrollController? scrollController;
  List<dynamic>? weatherData;
  int? tempMin;
  String? typeTemp;
   CardHoursWidget({super.key, this.weatherData, this.tempMin, this.typeTemp});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Card(
          color: Colors.red[50],
          elevation: 6,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text("${typeTemp}, minimum ${tempMin}C.",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 10,),
                Divider(height: 2,color: Colors.black,),
                SizedBox(height: 10,),
                Expanded(
                  child: ListView.builder(
                      controller: scrollController,
                      itemCount: weatherData?.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) =>
                          ContainerHoursDayWidget(weatherDataCourrant: weatherData?[index],)

                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
