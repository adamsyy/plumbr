import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:plumbr/employee/Signinrecruitee.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:geolocator/geolocator.dart';
final _auth = FirebaseAuth.instance;
double latitude;
double longitude;
String username='';
String email='';
String phoneno='';
String pass='';
String work='';
final fire = FirebaseFirestore.instance;

class CreateAccountemployee extends StatefulWidget {


  @override
  State<CreateAccountemployee> createState() => _CreateAccountemployeeState();
}

class _CreateAccountemployeeState extends State<CreateAccountemployee> {
  @override
  void initState() {
    getcurrentlocation();
    super.initState();
  }
  Future<void> getcurrentlocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
      print(position);


    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -49.0, end: -50.0),
            Pin(start: -426.0, end: -48.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 136.0),
                  child:
                      // Adobe XD layer: 'Bg' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(210.0),
                      color: const Color(0xffc2dbd2),
                    ),
                  ),
                ),
                Container(),
                Container(),
                Container(),
                Container(),
                Pinned.fromPins(
                  Pin(size: 245.0, middle: 0.5338),
                  Pin(size: 46.0, middle: 0.433),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 35,
                      color: const Color(0xff3c3c3c),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, middle: 0.2762),
                  Pin(size: 26.0, middle: 0.5046),
                  child:TextField(decoration: InputDecoration(
                    hintText: 'username',

                  ),onChanged: (String y){
                    username=y;
                  },),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, middle: 0.2762),
                  Pin(size: 26.0, middle: 0.5744),
                  child: TextField(decoration: InputDecoration(
                    hintText: 'Email id',

                  ),onChanged: (String y){
                    email=y;
                  },),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, middle: 0.288),
                  Pin(size: 26.0, middle: 0.6442),
                  child: TextField(decoration: InputDecoration(
                    hintText: 'Phone no',

                  ),onChanged: (String y){
                    phoneno=y;
                  },),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, middle: 0.2762),
                  Pin(size: 26.0, middle: 0.714),
                  child: TextField(decoration: InputDecoration(
                    hintText: 'Password',

                  ),onChanged: (String y){
                    pass=y;
                  }),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, middle: 0.2762),
                  Pin(size: 26.0, middle: 0.754),
                  child: DropdownButton<String>(hint: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text('Select the work you do'),
                  ),
                    items: <String>['Maid', 'Electrician','Driver'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String workselected) {
                    work=workselected;
                    print(work);
                    },
                  )
                ),
                Pinned.fromPins(
                  Pin(size: 108.0, middle: 0.5211),
                  Pin(size: 33.0, middle: 0.3356),
                  child:
                      // Adobe XD layer: 'Logo' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 33.0, middle: 0.5),
                        child: Text(
                          'plumbr.',
                          style: TextStyle(
                            fontFamily: 'Roboto Mono',
                            fontSize: 25,
                            color: const Color(0xff3b3b3b),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 173.0, middle: 0.5),
                  Pin(size: 20.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Logo' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 20.0, middle: 0.5),
                        child: Text(
                          'All Rights Reserved',
                          style: TextStyle(
                            fontFamily: 'Roboto Mono',
                            fontSize: 15,
                            color: const Color(0xff3c3c3c),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 50.0, middle: 0.4989),
                  Pin(size: 26.0, end: 154.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        ease: Curves.easeInOut,
                        duration: 0.4,
                        pageBuilder: () => Signinrecruitee(),
                      ),
                    ],
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: const Color(0xff3c3c3c),
                        fontWeight: FontWeight.w300,
                        height: 2.5,
                      ),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 189.0, middle: 0.4978),
            Pin(size: 47.0, middle: 0.7509),
            child:
                // Adobe XD layer: 'Sign in' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 1.0, end: 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: const Color(0xff5a5a5a),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 64.0, middle: 0.504),
                  Pin(size: 26.0, middle: 0.5714),
                  child: GestureDetector(onTap: ()async{
                    final newuser = await _auth.createUserWithEmailAndPassword(
                        email: email, password: pass);
                    fire.collection('employee').add({
                      'latittude':latitude,
                      'longitude':longitude,
                      'email':email,
                      'phone':phoneno,
                      'work':work,
                    });
                    if(newuser!=null){

                      Navigator.push(context,                    MaterialPageRoute(builder: (context) {
                            return Signinrecruitee();
                          }));
                    }
                  },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 129.0, middle: 0.5018),
            Pin(size: 39.0, start: 108.0),
            child: Text(
              'employee',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xff3b3b3b),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
