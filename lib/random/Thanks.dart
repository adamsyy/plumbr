import 'package:flutter/material.dart';

class Thanks  extends StatefulWidget {


  @override
  _ThanksState createState() => _ThanksState();
}

class _ThanksState extends State<Thanks> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Colors.black.withOpacity(0.85),),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(height:500,width: MediaQuery.of(context).size.width /1, decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(8.0),
          boxShadow:  [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
              spreadRadius: 0.0,
              offset: Offset(1,1),


              //(x,y)

            ),
          ],
        ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Padding(
                    padding: const EdgeInsets.only(top: 35.0),
                    child: Text('Thank You For Shopping With Us!',style: TextStyle(fontSize: 70,fontWeight: FontWeight.bold),)
                ),
              ),
              SizedBox(height: 12,),

            ],
          ),
        ),
      ),
    );

  }
}