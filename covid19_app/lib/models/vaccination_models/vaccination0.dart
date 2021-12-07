import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class vaccination0 extends StatefulWidget {
  const vaccination0({ Key? key }) : super(key: key);

  @override
  _vaccination0State createState() => _vaccination0State();
}

class _vaccination0State extends State<vaccination0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,

        title: Text(
          'VACCINE CERTIFICATE',
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
            padding: const EdgeInsets.only(left: 1, bottom: 114, ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    
                    SizedBox(height: 19),
                    SizedBox(
                        width: 336,
                        height: 589,
                        child: Material(
                            color: Color(0xaf218b21),
                            borderRadius: BorderRadius.circular(21),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 15, right: 16, top: 69, bottom: 15, ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                        Container(
                                            width: 90,
                                            height: 90,
                                            child: Image.asset(
                    'images/tick_green.png',
                    height: 90, 
                    width: 90,),
                                        ),
                                        SizedBox(height: 46.33),
                                        Text(
                                            "CERTIFICATE FOR \n02 PER VACCINATION",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w900,
                                            ),
                                        ),
                                        SizedBox(height: 46.33),
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
                                        SizedBox(height: 46.33),
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
                                                                        left: 15,
                                                                        top: 21,
                                                                        child: Container(
                                                                            width: 70,
                                                                            height: 70,
                                                                            child: Image.asset(
                    'images/number2.png',
                    height: 70, 
                    width: 70,),
                                                                        ),
                                                                    ),
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
                                                                                "00:00 - 21/11/2021",
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 14,
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
