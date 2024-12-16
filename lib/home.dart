import 'package:flutter/material.dart';
import 'package:weather_application/dropmenu.dart';
import 'weather.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var current = weatherData[0];
  String condition = weatherData[0]['condition'];
  String city = weatherData[0]['city'];
  String humidity = weatherData[0]['humidity'];
  int temp0 = weatherData[0]['temperature'];
  bool checked = false;
  String temperature='';
  double temp2 = 0;

  double convertToFahrenheit(int temp) {
    int tempInCelsius = temp;
    return (1.8 * tempInCelsius) + 32;
  }


  @override
  Widget build(BuildContext context) {
    temp2 =  (1.8 * temp0) + 32;
    return Scaffold(
        appBar: AppBar(
          title: Text("Weather App", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Text("Choose any city:", style: TextStyle(fontSize: 20),),
              SizedBox(height: 10,),
              Dropmenu(weather: (w){
                setState(() {
                  this.current = w;
                  city = w['city'];
                  temp0 = w['temperature'];
                  temperature = '${temp0}°C';
                  checked = false;
                  humidity = w['humidity'];
                  condition = w['condition'];
                });
              }),
              SizedBox(height: 15,),
              Row(children: [
                Text(city, style: TextStyle(fontSize: 25),),
                SizedBox(width: 10,),
                Text("${temperature}", style: TextStyle(fontSize: 25),),
              ], mainAxisAlignment: MainAxisAlignment.center,),

              SizedBox(height: 15,),

              Row(
                children: [
                  Text(condition, style: TextStyle(fontSize: 40),),
                  SizedBox(width: 10,),
                  for(int i=0; i<=4; i++)
                    if(condition == weatherImages[i]['condition'])
                      Image(image: weatherImages[i]['image'], height: 75, width: 75,)
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: 15,),
              Text("Humidity: ${humidity}", style: TextStyle(fontSize: 20),),

              SizedBox(height: 15,),
              Row(
                children: [
                  Text("Fehrenheit mesurment:", style: TextStyle(fontSize: 15),),
                  Checkbox(value: checked, onChanged: (value){
                    setState(() {
                      checked = value!;
                      if(value)
                        temperature = '${temp2}°F';
                      else
                        temperature = '${temp0}°C';
                    });
                  }),
                ],
                mainAxisAlignment: MainAxisAlignment.center,),
            ],
          ),
        )
    );
  }
}
