import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
double latitude;
double longitude;
class Test extends StatefulWidget {


  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  void initState() {
getcurrentlocation();
    super.initState();
  }

  Future<void>  getcurrentlocation() async{
    LocationPermission permission = await Geolocator.requestPermission();
    try {

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude=position.latitude;
      longitude=position.longitude;
      print(position);
    }
    catch(e){
      print(e);
    }
  }








  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(color:Colors.green,child: Text('hi'),));
  }
}
