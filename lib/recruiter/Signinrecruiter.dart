import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:plumbr/recruiter/Recruiter.dart';
import 'package:plumbr/recruiter/Recruiterdashboard.dart';

import 'package:plumbr/general/Start.dart';
import '../random/Forgotpassword.dart';
import 'package:adobe_xd/page_link.dart';
import 'CreateAccountRecruiter.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
final _auth = FirebaseAuth.instance;
String email='';
String pass='';
class Signinrecruiter extends StatelessWidget {
  Signinrecruiter({
    Key key,
  }) : super(key: key);
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
                      SvgPicture.string(
                    _svg_uzhy0b,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 113.0, middle: 0.5),
                  Pin(size: 46.0, middle: 0.4322),
                  child: Text(
                    'Sign in',
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
                  Pin(size: 200.0, middle: 0.2634),
                  Pin(size: 26.0, middle: 0.5303),
                  child: TextField(decoration: InputDecoration(
                    hintText: 'Username',
                  ),onChanged: (String x){
                    email=x;
                  },),
                ),
                Pinned.fromPins(
                  Pin(size: 200.0, middle: 0.2634),
                  Pin(size: 26.0, middle: 0.6161),
                  child: TextField(decoration: InputDecoration(
                    hintText: 'Password',
                  ),onChanged: (String y){
                    pass=y;
                  },),
                ),
                Pinned.fromPins(
                  Pin(size: 164.0, end: 72.0),
                  Pin(size: 26.0, middle: 0.6958),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        ease: Curves.easeInOut,
                        duration: 0.4,
                        pageBuilder: () => Forgotpassword(),
                      ),
                    ],
                    child: Text(
                      'Forgot password ?',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: const Color(0xff3c3c3c),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
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
                  Pin(size: 163.0, middle: 0.5),
                  Pin(size: 26.0, end: 164.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        ease: Curves.easeInOut,
                        duration: 0.4,
                        pageBuilder: () => CreateAccountRecruiter(),
                      ),
                    ],
                    child: Text(
                      'Create an account',
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
                Container(),
                Container(),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 189.0, middle: 0.4978),
            Pin(size: 47.0, middle: 0.6719),
            child:
                // Adobe XD layer: 'Sign in' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.0),
                      color: const Color(0xff5a5a5a),
                    ),
                  ),
                ),
                GestureDetector(onTap: ()async{
                  final user = await _auth.signInWithEmailAndPassword(
                      email: email, password: pass);
                  if (user != null) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                          return Recruiterdashboard();
                        }));
                  }
                },
                  child: Pinned.fromPins(
                    Pin(size: 64.0, middle: 0.504),
                    Pin(size: 26.0, middle: 0.5714),
                    child: Text(
                      'Sign In',
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
            Pin(size: 119.0, middle: 0.5017),
            Pin(size: 39.0, start: 95.0),
            child:
                // Adobe XD layer: 'Logo' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 39.0, middle: 0.5),
                  child: Text(
                    'Recruiter',
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
          ),
        ],
      ),
    );
  }
}

const String _svg_uzhy0b =
    '<svg viewBox="-41.0 -426.0 511.0 1208.0" ><path transform="translate(-41.0, -426.0)" d="M 210 0 L 301 0 C 416.9797973632812 0 511 94.02019500732422 511 210 L 511 998 C 511 1113.979858398438 416.9797973632812 1208 301 1208 L 210 1208 C 94.02019500732422 1208 0 1113.979858398438 0 998 L 0 210 C 0 94.02019500732422 94.02019500732422 0 210 0 Z" fill="#ebe645" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
