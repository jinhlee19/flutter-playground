import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void getLocation() async {
    await Geolocator.requestPermission();
    LocationPermission permission = await Geolocator.checkPermission();
    // data type position 에 position 으로 사용.
    // keyword 인 await 으로 geolocator 에서 현재 포지션을 찾는데 사용한다. input 에는 얼만큼 정확히 측정할 것인지를 포함한다.
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            getLocation();
            //Get the current location
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
