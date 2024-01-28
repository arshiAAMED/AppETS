import 'package:flutter/material.dart';
class TopTemperatureWidget extends StatelessWidget {
  int? temperature;
  int? feelsLike;
  int? tempMin;
  int? tempMax;
  String? typeTemp;
  String? city;
  String? image;
   TopTemperatureWidget({
    super.key, this.temperature, this.feelsLike, this.tempMin,
    this.tempMax, this.city, this.typeTemp, this.image

  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${temperature}°", style: Theme.of(context).textTheme.displayLarge,),
            SizedBox(height: 15,),
            Text("${typeTemp}", style: TextStyle(fontSize: 22),),
            SizedBox(height: 25,),
            Text(city?? 'Montréal', style: TextStyle(fontSize: 22),),
            SizedBox(height: 5,),
            Text("$temperature° /$tempMin °C Feels like $feelsLike°", style: TextStyle(fontSize: 20),),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(image!),
          ),
        )
      ],
    );
  }
}
