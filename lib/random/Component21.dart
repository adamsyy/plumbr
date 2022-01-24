import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Component21 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_akmrx4,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_akmrx4 =
    '<svg viewBox="0.0 0.0 550.0 205.0" ><path  d="M 0 0 L 550 0 L 550 205 L 0 205 L 0 0 Z" fill="#efeb6a" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
