import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:plumbr/recruiter/Recruiter.dart';
import 'package:plumbr/fetch_location/Mapshow.dart';
import 'package:plumbr/general/Start.dart';
import 'package:plumbr/random/Test.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plumbr/recruiter/Recruiterdashboard.dart';


double latitude;
double longitude;

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(home:MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
getcurrentlocation();
    super.initState();
  }
  Future<void> getcurrentlocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
      print(position);
      print('@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@');
    } catch (e) {
      print(e);
    }
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plumbr',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Start(),
    );
  }
}
//comments 223456

