import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class vaccination1 extends StatefulWidget {
  const vaccination1({ Key? key }) : super(key: key);

  @override
  _vaccination1State createState() => _vaccination1State();
}

class _vaccination1State extends State<vaccination1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,

        title: Text(
          'VACCINATION CERTIFICATE',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
           ),
          ),
      ),
      body: SizedBox(
    width: 375,
    height: 812,
    child: Material(
        color: Colors.white,
        child: Padding(
            padding: const EdgeInsets.only(left: 21, right: 18, top: 109, bottom: 114, ),
            child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    SizedBox(
                        width: 336,
                        height: 589,
                        child: Material(
                            color: Color(0xfff4a460),
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 15, right: 16, top: 69, bottom: 142, ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                        Container(
                                            width: 90,
                                            height: 90,
                                            child: Image.asset(
                    'images/tick_yellow.png',
                    height: 90, 
                    width: 90,),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                            "CERTIFICATE FOR \n01 PER VACCINATION",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w900,
                                            ),
                                        ),
                                        SizedBox(height: 4),
                                        Container(
                                            width: 305,
                                            height: 106,
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:[
                                                    SizedBox(
                                                        width: 305,
                                                        height: 106,
                                                        child: Material(
                                                            color: Colors.white,
                                                            elevation: 25, 
                                                            borderRadius: BorderRadius.circular(20),
                                                            child: Stack(
                                                                children:[
                                                                    Positioned(
                                                                        left: 109.74,
                                                                        top: 25.53,
                                                                        child: SizedBox(
                                                                            width: 172.47,
                                                                            height: 30.45,
                                                                            child: Text(
                                                                                "COVID-19 Vaccine AstraZenica",
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 18,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned(
                                                                        left: 110.65,
                                                                        top: 67.29,
                                                                        child: SizedBox(
                                                                            width: 171.56,
                                                                            height: 15.66,
                                                                            child: Text(
                                                                                "00:00 - 21/09/2021",
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 14,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned(
                                                                        left: 15,
                                                                        top: 17,
                                                                        child: Container(
                                                                            width: 70,
                                                                            height: 70,
                                                                            child: Image.asset(
                    'images/number1.png',
                    height: 70, 
                    width: 70,),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                        SizedBox(height: 4),
                                        Container(
                                            width: 305,
                                            height: 106,
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:[
                                                    SizedBox(
                                                        width: 305,
                                                        height: 106,
                                                        child: Material(
                                                            color: Colors.white,
                                                            elevation: 25, 
                                                            borderRadius: BorderRadius.circular(20),
                                                            child: Stack(
                                                                children:[
                                                                    Positioned(
                                                                        left: 109.74,
                                                                        top: 25.53,
                                                                        child: SizedBox(
                                                                            width: 172.47,
                                                                            height: 30.45,
                                                                            child: Text(
                                                                                "COVID-19 Vaccine AstraZenica",
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 18,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned(
                                                                        left: 110.65,
                                                                        top: 67.29,
                                                                        child: SizedBox(
                                                                            width: 171.56,
                                                                            height: 15.66,
                                                                            child: Text(
                                                                                "00:00 - 21/09/2021",
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 14,
                                                                                ),
                                                                            ),
                                                                        ),
                                                                    ),
                                                                    Positioned(
                                                                        left: 15,
                                                                        top: 17,
                                                                        child: Container(
                                                                            width: 70,
                                                                            height: 70,
                                                                            child: FlutterLogo(size: 70),
                                                                        ),
                                                                    ),
                                                                ],
                                                            ),
                                                        ),
                                                    ),
                                                ],
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        ),
    ),
      )
    );
  }
}