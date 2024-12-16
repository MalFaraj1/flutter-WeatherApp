import 'package:flutter/material.dart';
import 'package:weather_application/weather.dart';


class Dropmenu extends StatefulWidget {
  final Function(Map<String, dynamic>) weather;
  const Dropmenu({super.key, required this.weather});

  @override
  State<Dropmenu> createState() => _DropmenuState();
}

class _DropmenuState extends State<Dropmenu> {
  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      width: 230,
        dropdownMenuEntries: weatherData.map((w) =>
            DropdownMenuEntry(value: w, label: w['city'])).toList(),
        initialSelection: weatherData[0],
        onSelected: (w){
          widget.weather(w as Map<String, dynamic>);
        },
    );
  }
}
