import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../fetch_location/Mapshow.dart';

class Recruiterdashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 16.0, end: 16.0),
            Pin(size: 186.0, start: 130.0),
            child:
                // Adobe XD layer: 'Container' (group)
                Stack(
              children: [
// background:
                Positioned.fill(
                  child: SvgPicture.string(
                    _svg_khnlrg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 136.0, 0.0, 0.0),
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: BlendMask(
                            blendMode: BlendMode.screen,
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0x80ffffff),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 16.0, end: 16.0),
            Pin(size: 186.0, end: 121.0),
            child:
                // Adobe XD layer: 'Container' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_khnlrg,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 39.0, end: 0.0),
                  child: BlendMask(
                    blendMode: BlendMode.screen,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0x80ffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 16.0, end: 16.0),
            Pin(size: 186.0, middle: 0.5066),
            child:
                // Adobe XD layer: 'Container' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: SvgPicture.string(
                    _svg_q6vxa,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 39.0, end: 0.0),
                  child: BlendMask(
                    blendMode: BlendMode.screen,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0x80ffffff),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, start: 41.0),
            Pin(size: 50.0, middle: 0.2234),
            child:
                // Adobe XD layer: 'maid' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, middle: 0.3125),
            Pin(size: 33.0, middle: 0.2309),
            child: GestureDetector(onTap: ()async{
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return Mapshow(joli: "Maid",);
                  }));
            },
              child: Text(
                'Maid',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xff3b3b3b),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 122.0, middle: 0.3759),
            Pin(size: 33.0, middle: 0.4892),
            child: GestureDetector(onTap: ()async{
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return Mapshow(joli: "Electrician",);
                  }));
            },
              child: Text(
                'Electrician',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xff3b3b3b),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 122.0, middle: 0.3759),
            Pin(size: 33.0, middle: 0.7476),
            child: GestureDetector(onTap: ()async{
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return Mapshow(joli: "Driver",);
                  }));
            },
              child: Text(
                'Driver',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 25,
                  color: const Color(0xff3b3b3b),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, start: 41.0),
            Pin(size: 50.0, middle: 0.4872),
            child:
                // Adobe XD layer: 'electrician' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 50.0, start: 41.0),
            Pin(size: 50.0, middle: 0.7509),
            child:
                // Adobe XD layer: 'driver' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 198.0, middle: 0.5),
            Pin(size: 26.0, start: 77.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 26.0, middle: 0.5),
                  child: Text(
                    'Find workers near you',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: const Color(0xff3b3b3b),
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 292.0, end: 54.0),
            Pin(size: 25.0, middle: 0.3294),
            child:
                // Adobe XD layer: 'Stats' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 27.0, start: 31.0),
                  Pin(size: 20.0, middle: 0.6),
                  child: Text(
                    '39',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff535353),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 38.0, middle: 0.5085),
                  Pin(size: 20.0, middle: 0.5),
                  child: Transform.rotate(
                    angle: 0.0175,
                    child: Text(
                      '300+',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: const Color(0xff535353),
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 47.0, end: 0.0),
                  Pin(size: 20.0, middle: 0.6),
                  child: Text(
                    '<24hrs',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff535353),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'available' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.367),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'rupee (1)' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.8015),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'back-in-time' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 25.0, middle: 0.5948),
            child:
                // Adobe XD layer: 'Stats' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 27.0, start: 31.0),
                  Pin(size: 20.0, middle: 0.6),
                  child: Text(
                    '120',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff535353),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 38.0, middle: 0.5085),
                  Pin(size: 20.0, middle: 0.5),
                  child: Transform.rotate(
                    angle: 0.0175,
                    child: Text(
                      '500+',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: const Color(0xff535353),
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 47.0, end: 0.0),
                  Pin(size: 20.0, middle: 0.6),
                  child: Text(
                    '<24hrs',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff535353),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'available' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.367),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'rupee (1)' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.8015),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'back-in-time' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 60.0, end: 60.0),
            Pin(size: 25.0, end: 126.0),
            child:
                // Adobe XD layer: 'Stats' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 27.0, start: 31.0),
                  Pin(size: 20.0, middle: 0.6),
                  child: Text(
                    '48',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff535353),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 44.0, middle: 0.5209),
                  Pin(size: 20.0, middle: 0.5105),
                  child: Transform.rotate(
                    angle: 0.0175,
                    child: Text(
                      '1000+',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 15,
                        color: const Color(0xff535353),
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 47.0, end: 0.0),
                  Pin(size: 20.0, middle: 0.6),
                  child: Text(
                    '<24hrs',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xff535353),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, start: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'available' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.367),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'rupee (1)' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.8015),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'back-in-time' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 23.0, end: 16.0),
            Pin(size: 54.0, start: 10.0),
            child:
                // Adobe XD layer: 'Location indicator' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff2e2f3f),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, start: 16.0),
                  Pin(size: 25.0, middle: 0.5172),
                  child:
                      // Adobe XD layer: 'pin' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 194.0, start: 54.0),
                  Pin(size: 20.0, middle: 0.5882),
                  child: Text(
                    'Model Engineering College ..',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 208.0, middle: 0.4779),
            Pin(size: 1.0, start: 107.5),
            child: SvgPicture.string(
              _svg_nhqz80,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_khnlrg =
    '<svg viewBox="16.0 42.0 380.0 186.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="10"/></filter></defs><path transform="translate(16.0, 42.0)" d="M 0 0 L 380 0 L 380 186 L 0 186 L 0 0 Z" fill="#efeb6a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_q6vxa =
    '<svg viewBox="16.0 42.0 380.0 186.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="10"/></filter></defs><path transform="translate(16.0, 42.0)" d="M 0 0 L 380 0 L 380 186 L 0 186 L 0 0 Z" fill="#b3d2c7" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_nhqz80 =
    '<svg viewBox="97.5 107.5 208.0 1.0" ><path transform="translate(97.5, 107.5)" d="M 0 0 L 208 0" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
