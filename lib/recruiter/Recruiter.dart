import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'Signinrecruiter.dart';
import 'package:adobe_xd/page_link.dart';
import 'CreateAccountRecruiter.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Recruiter extends StatelessWidget {
  const Recruiter({
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
            Pin(start: -317.4, end: -5.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 84.0, middle: 0.4173),
                  Pin(size: 26.0, end: 0.0),
                  child: const Text(
                    'All Rights Reserved',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 10,
                      color: Color(0xff3c3c3c),
                      fontWeight: FontWeight.w100,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 310.6),
                  child:
                      // Adobe XD layer: 'Bg' (shape)
                      SvgPicture.string(
                    _svg_pqowj2,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 300.0, middle: 0.4192),
                  Pin(size: 92.0, middle: 0.3884),
                  child:
                      // Adobe XD layer: 'Logo' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 92.0, middle: 0.5),
                        child: const Text(
                          'plumbr.',
                          style: TextStyle(
                            fontFamily: 'Roboto Mono',
                            fontSize: 70,
                            color: Color(0xff3b3b3b),
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 162.0, middle: 0.5191),
                  Pin(size: 53.0, middle: 0.4462),
                  child:
                      // Adobe XD layer: 'Logo' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(size: 53.0, middle: 0.5),
                        child: const Text(
                          'Recruiter',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 40,
                            color: Color(0xff3b3b3b),
                            fontWeight: FontWeight.w300,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 189.0, middle: 0.4042),
                  Pin(size: 47.0, middle: 0.7136),
                  child:
                      // Adobe XD layer: 'Sign in' (group)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        ease: Curves.easeInOut,
                        duration: 0.4,
                        pageBuilder: () => const Signinrecruiter(),
                      ),
                    ],
                    child: Stack(
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
                          Pin(size: 64.0, middle: 0.504),
                          Pin(size: 26.0, middle: 0.5714),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 20,
                              color: Color(0xffffffff),
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
                  Pin(size: 247.0, middle: 0.3972),
                  Pin(size: 47.0, middle: 0.7774),
                  child:
                      // Adobe XD layer: 'Create accouht' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: PageLink(
                          links: [
                            PageLinkInfo(
                              ease: Curves.easeInOut,
                              duration: 0.4,
                              pageBuilder: () => const CreateAccountRecruiter(),
                            ),
                          ],
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24.0),
                              color: const Color(0xff5a5a5a),
                            ),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 140.0, middle: 0.5327),
                        Pin(size: 26.0, middle: 0.5714),
                        child: const Text(
                          'Create Account',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                            color: Color(0xffffffff),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_pqowj2 =
    '<svg viewBox="-173.9 -317.4 893.9 881.8" ><path transform="matrix(0.819152, 0.573576, -0.573576, 0.819152, 177.66, -317.42)" d="M 219 0 L 443 0 C 563.9503784179688 0 662 98.04963684082031 662 219 L 662 394 C 662 514.9503784179688 563.9503784179688 613 443 613 L 219 613 C 98.04963684082031 613 0 514.9503784179688 0 394 L 0 219 C 0 98.04963684082031 98.04963684082031 0 219 0 Z" fill="#ebe645" fill-opacity="0.8" stroke="none" stroke-width="1" stroke-opacity="0.8" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
