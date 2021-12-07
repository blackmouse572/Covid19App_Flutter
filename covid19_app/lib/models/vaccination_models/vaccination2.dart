import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
class vaccination2 extends StatefulWidget {
  const vaccination2({ Key? key }) : super(key: key);

  @override
  _vaccination2State createState() => _vaccination2State();
}

class _vaccination2State extends State<vaccination2> {
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
            padding: const EdgeInsets.only(left: 1, bottom: 110, ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    SizedBox(
                        width: 375,
                        height: 90,
                        child: Material(
                            color: Colors.white,
                            elevation: 20, 
                            child: Padding(
                                padding: const EdgeInsets.only(left: 55, right: 54, top: 39, bottom: 4, ),
                                child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children:[
                                        SizedBox(
                                            width: 266,
                                            height: 47,
                                            child: Text(
                                                "VACCINATION CERTIFICATE",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontFamily: "Roboto",
                                                    fontWeight: FontWeight.w900,
                                                ),
                                            ),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                    ),
                    SizedBox(height: 27),
                    SizedBox(
                        width: 336,
                        height: 585,
                        child: Material(
                            color: Color(0xffdc143c),
                            borderRadius: BorderRadius.circular(21),
                            child: Padding(
                                padding: const EdgeInsets.only(left: 27, right: 29, top: 61, bottom: 33, ),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:[
                                        Container(
                                            width: 90,
                                            height: 90,
                                            child: FlutterLogo(size: 90),
                                        ),
                                        SizedBox(height: 151.50),
                                        Text(
                                            "FOR 0 PER VACCINATION",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24,
                                                fontFamily: "Roboto",
                                                fontWeight: FontWeight.w900,
                                            ),
                                        ),
                                        SizedBox(height: 151.50),
                                        Container(
                                            width: 272,
                                            height: 70,
                                            child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children:[
                                                    SizedBox(
                                                        width: 272,
                                                        height: 70,
                                                        child: Material(
                                                            color: Colors.white,
                                                            elevation: 25, 
                                                            borderRadius: BorderRadius.circular(20),
                                                            child: Padding(
                                                                padding: const EdgeInsets.only(left: 30, right: 28, top: 13, bottom: 14, ),
                                                                child: Row(
                                                                    mainAxisSize: MainAxisSize.min,
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                    children:[
                                                                        SizedBox(
                                                                            width: 214,
                                                                            height: 43,
                                                                            child: Text(
                                                                                "Vaccination Registration",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(
                                                                                    color: Colors.black,
                                                                                    fontSize: 18,
                                                                                    fontFamily: "Roboto",
                                                                                    fontWeight: FontWeight.w700,
                                                                                ),
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
