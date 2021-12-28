import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:http/http.dart' as http;

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    print('initState initiated.');
    // getLocation();
    getData();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() async {
    const uri =
        'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={API_KEY}';
    http.Response response = await http.get(Uri.parse(uri));
    // print(response.statusCode);
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      var longitude = jsonDecode(data)['coord']['lon'];
      print(longitude);
      var weather = jsonDecode(data)['weather'][0]['description'];
      print(weather);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
