import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../random/Component21.dart';

class Dashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -66.0, end: -72.0),
            Pin(size: 205.0, start: 66.0),
            child: Component21(),
          ),
          Pinned.fromPins(
            Pin(start: -66.0, end: -72.0),
            Pin(size: 205.0, middle: 0.7579),
            child: Component21(),
          ),
        ],
      ),
    );
  }
}
