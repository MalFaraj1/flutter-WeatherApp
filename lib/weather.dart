import 'package:flutter/cupertino.dart';

final List<Map<String, dynamic>> weatherData = [
  {
    'city': 'New York',
    'temperature': 15,
    'condition': 'Sunny',
    'humidity': '50%'
  },
  {
    'city': 'London',
    'temperature': 10,
    'condition': 'Rainy',
    'humidity': '80%'
  },
  {
    'city': 'Tokyo',
    'temperature': 20,
    'condition': 'Cloudy',
    'humidity': '60%'
  },
  {
    'city': 'Tripoli',
    'temperature': 18,
    'condition': 'Partly Cloudy',
    'humidity': '63%'
  },
  {
    'city': 'Stockholm',
    'temperature': -10,
    'condition': 'Snowy',
    'humidity': '87%'
  },
];



final List<Map<String, dynamic>> weatherImages = [
  {
    'condition': 'Sunny',
    'image': AssetImage('assets/sunny.png')
  },
  {
    'condition': 'Cloudy',
    'image': AssetImage('assets/cloudy.png')
  },
  {
    'condition': 'Rainy',
    'image': AssetImage('assets/rainy.png')
  },
  {
    'condition': 'Snowy',
    'image': AssetImage('assets/snowy.png')
  },
  {
    'condition': 'Partly Cloudy',
    'image': AssetImage('assets/partlycloudy.png')
  },
];