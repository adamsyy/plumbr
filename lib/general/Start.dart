import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../recruiter/Recruiter.dart';
import 'package:adobe_xd/page_link.dart';
import '../employee/Employee.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Start extends StatelessWidget {
  Start({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -173.9, end: -307.9),
            Pin(start: -373.4, end: 164.1),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 197.5),
                  child:
                      // Adobe XD layer: 'Bg' (shape)
                      SvgPicture.string(
                    _svg_rkuh9m,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 300.0, middle: 0.4192),
                  Pin(size: 92.0, middle: 0.4896),
                  child:
                      // Adobe XD layer: 'Logo' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 92.0, middle: 0.5),
                        child: Text(
                          'plumbr.',
                          style: TextStyle(
                            fontFamily: 'Roboto Mono',
                            fontSize: 70,
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
                  Pin(size: 142.0, middle: 0.4129),
                  Pin(size: 37.5, end: 72.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        ease: Curves.easeInOut,
                        duration: 0.4,
                        pageBuilder: () => Recruiter(),
                      ),
                    ],
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(size: 1.0, end: -1.0),
                          child: SvgPicture.string(
                            _svg_xyk9,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 101.0, start: 19.5),
                          Pin(size: 33.0, middle: 0.0),
                          child: Text(
                            'Recruiter',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 25,
                              color: const Color(0xff3b3b3b),
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 142.0, middle: 0.4129),
                  Pin(size: 38.5, end: 0.0),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 1.0, end: -1.0),
                        child: SvgPicture.string(
                          _svg_cqlcxz,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(start: 17.0, end: 14.0),
                        Pin(size: 33.0, middle: 0.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              ease: Curves.easeInOut,
                              duration: 0.4,
                              pageBuilder: () => Employee(),
                            ),
                          ],
                          child: Text(
                            'Employee',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 25,
                              color: const Color(0xff3b3b3b),
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
                  Pin(size: 181.0, middle: 0.4067),
                  Pin(size: 66.0, end: 131.5),
                  child: Text(
                    'Continue As\n',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 25,
                      color: const Color(0xff292828),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.center,
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

const String _svg_rkuh9m =
    '<svg viewBox="-173.9 -373.4 893.9 881.8" ><path transform="matrix(0.819152, 0.573576, -0.573576, 0.819152, 177.66, -373.42)" d="M 219 0 L 443 0 C 563.9503784179688 0 662 98.04963684082031 662 219 L 662 394 C 662 514.9503784179688 563.9503784179688 613 443 613 L 219 613 C 98.04963684082031 613 0 514.9503784179688 0 394 L 0 219 C 0 98.04963684082031 98.04963684082031 0 219 0 Z" fill="#c79dbc" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_xyk9 =
    '<svg viewBox="136.5 561.5 142.0 1.0" ><path transform="translate(136.5, 561.5)" d="M 0 0 L 142 0" fill="none" stroke="#2d2c2c" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_cqlcxz =
    '<svg viewBox="136.5 660.5 142.0 1.0" ><path transform="translate(136.5, 660.5)" d="M 0 0 L 142 0" fill="none" stroke="#2d2c2c" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
