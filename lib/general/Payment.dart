import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../random/Thanks.dart';
String pin;
String address;
String no;
class Payment extends StatefulWidget {
Payment({String number}){
  no=number;
}
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {

  Razorpay razorpay;
  TextEditingController textEditingController=TextEditingController();
  @override
  void initState() {

    super.initState();
    razorpay=Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerPaymentError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose() {

    super.dispose();
    razorpay.clear();
  }

  void openCheckout(){
    int z=int.parse(textEditingController.text)*100;
    var options={
      "key":"rzp_test_KRIbh5kOB96e8q",
      "amount":"${z}",
      "name":"Plumbr",
      "description":"Fastest Payment Method",
      "prefill":{
        "contact":"7559076475",
        "email": "adamrubiks@gmail.com",
      },
      "external":{
        "wallets":["paytm"],

      }
    };
    try{
      razorpay.open(options);
    }
    catch(e){
      print(e.toString());
    }

  }


  void handlerPaymentSuccess(){
    print('success aayye');
  }

  void handlerPaymentError(){
    print('error aai');
  }

  void handlerExternalWallet(){
    print('external aaye');
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(  backgroundColor: Colors.grey[200],
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          elevation: 0,
          leading: GestureDetector(onTap: (){
            Navigator.pop(context);
          },child: Icon(FontAwesomeIcons.backward,color: Colors.black,)),
          actions: [
            Container(
              decoration: BoxDecoration(

                shape: BoxShape.circle,
              ),
              margin: EdgeInsets.all(10),
              child: Icon(FontAwesomeIcons.signature,color: Colors.pinkAccent.withOpacity(0.8),),
            ),
          ],
        ),
        body:SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(height: 250, decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(8.0),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),


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
                          child: TextField(
                            controller: textEditingController,decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.8))),

                              hintText: 'Amount to pay',suffixText: 'INR',hintStyle:TextStyle(fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),suffixStyle: TextStyle(color: Colors.black)
                          ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12,),
                      RaisedButton(onPressed: (){
                        openCheckout();
                      },child: Text('Pay Now',style: TextStyle(color: Colors.white),),color: Colors.black.withOpacity(0.8),shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)))
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(height: 350, decoration: BoxDecoration(color: Colors.grey[200],borderRadius: BorderRadius.circular(8.0),
                  boxShadow:  [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),


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
                          child: TextField(
                            onChanged: (value) {
                              pin = value;
                            },
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.8))),

                                hintText: 'Add work details',hintStyle:TextStyle(fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),suffixStyle: TextStyle(color: Colors.black)
                            ),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 1),
                          child: TextField(
                            onChanged: (value) {
                              address = value;
                            },
                            decoration: InputDecoration(border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black.withOpacity(0.8))),

                                hintText: 'any extra information',hintStyle:TextStyle(fontWeight: FontWeight.w100,fontStyle: FontStyle.italic),suffixStyle: TextStyle(color: Colors.black)
                            ),
                          ),

                        ),
                      ),
                      SizedBox(height: 12,),

                      RaisedButton(onPressed: ()async{
                        if(address!=null&&pin!=null) {
                          var number=no;
                          bool res=await FlutterPhoneDirectCaller.callNumber(number);
                        }
                        else{
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              // return object of type Dialog
                              return AlertDialog(
                                title: new Text("Order Failed"),
                                content: new Text("Please enter your details to continue"),
                                actions: <Widget>[
                                  // usually buttons at the bottom of the dialog
                                  new FlatButton(
                                    child: new Text("Close"),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),

                                ],
                              );
                            },
                          );
                        }

                      },child: Text('Call',style: TextStyle(color: Colors.white),),color: Colors.black,elevation: 4,shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)))
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}