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
      // print(data);
      // var longitude = jsonDecode(data)['coord']['lon'];
      // print(longitude);
      // var weather = jsonDecode(data)['weather'][0]['description'];
      // print(weather);

      // 처리 될때까지 데이터타입을 알수 없으므로 dynamic datatype으로 유지.
      var decodeData = jsonDecode(data);

      late double temp = decodeData['main']['temp'];
      late int condition = decodeData['weather'][0]['id'];
      late String cityName = decodeData['name'];

      print(temp);
      print(condition);
      print(cityName);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
