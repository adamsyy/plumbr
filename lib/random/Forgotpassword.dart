import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../general/Start.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Forgotpassword extends StatelessWidget {
  Forgotpassword({
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
            Pin(start: -426.0, end: 88.0),
            child:
                // Adobe XD layer: 'Bg' (shape)
                SvgPicture.string(
              _svg_ck5c2k,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 39.0, end: 21.0),
            Pin(start: 14.0, end: -48.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 49.0, end: 48.0),
                  Pin(size: 46.0, start: 119.0),
                  child: Text(
                    'Reset password',
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
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 50.0, middle: 0.2892),
                  child: Scrollbar(
                    child: SingleChildScrollView(
                      child: Text(
                        'We\'ll send a link to reset your passwor don your registered email id',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: const Color(0xff3c3c3c),
                          fontWeight: FontWeight.w300,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 120.0, start: 21.0),
                  Pin(size: 26.0, middle: 0.4157),
                  child: Text(
                    'Email Id',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: const Color(0xff3c3c3c),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 108.0, middle: 0.5),
                  Pin(size: 33.0, start: 0.0),
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
                  Pin(size: 173.0, middle: 0.4525),
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
                  Pin(size: 48.0, middle: 0.4704),
                  Pin(size: 26.0, middle: 0.8189),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        ease: Curves.easeInOut,
                        duration: 0.4,
                        pageBuilder: () => Start(),
                      ),
                    ],
                    child: Text(
                      'Back',
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 229.0, middle: 0.5027),
            Pin(size: 47.0, middle: 0.5954),
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
                Pinned.fromPins(
                  Pin(start: 43.0, end: 43.0),
                  Pin(size: 26.0, middle: 0.5714),
                  child: Text(
                    'Reset password',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: const Color(0xffffffff),
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

const String _svg_ck5c2k =
    '<svg viewBox="-49.0 -426.0 511.0 1208.0" ><path transform="translate(-49.0, -426.0)" d="M 210 0 L 301 0 C 416.9797973632812 0 511 94.02019500732422 511 210 L 511 998 C 511 1113.979858398438 416.9797973632812 1208 301 1208 L 210 1208 C 94.02019500732422 1208 0 1113.979858398438 0 998 L 0 210 C 0 94.02019500732422 94.02019500732422 0 210 0 Z" fill="#c79dbc" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
