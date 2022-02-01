import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:plumbr/recruiter/Recruiter.dart';
import 'package:plumbr/fetch_location/Mapshow.dart';
import 'package:plumbr/general/Start.dart';
import 'package:plumbr/random/Test.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:plumbr/recruiter/Recruiterdashboard.dart';
final _auth = FirebaseAuth.instance;
final fire = FirebaseFirestore.instance;
double latitude;
double longitude;
List<String> list=new List<String>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {

getDocs();

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
  Future getDocs() async{
    await FirebaseFirestore.instance
        .collection('employee')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        if(doc["work"].toString()=="Maid"){  list.add(doc["email"]);
       }
      } );
    });
    print(list);
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
