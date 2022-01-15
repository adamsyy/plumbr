import 'package:flutter/material.dart';
import 'package:plumbr/recruiter/Recruiter.dart';
import 'package:plumbr/fetch_location/Mapshow.dart';
import 'package:plumbr/general/Start.dart';
import 'package:plumbr/random/Test.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(GetMaterialApp(home:MyApp()));
}

class MyApp extends StatelessWidget {
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

