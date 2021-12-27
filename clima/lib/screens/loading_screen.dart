import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  void getLocation() async {
    try {
      LocationPermission permission = await Geolocator.checkPermission();
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print(position);
      await Geolocator.requestPermission();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    String myMargin = 'abc';
    late double myMarginAsADouble;

    try {
      myMarginAsADouble = double.parse(myMargin);
    } catch (e) {
      print(e);
      myMarginAsADouble = 30.0;
    }
    return Scaffold(
      body: Container(
        // margin: EdgeInsets.all(myMarginAsADouble ?? 30.0),
        margin: EdgeInsets.all(myMarginAsADouble),
        color: Colors.red,
      ),
    );
  }
}
