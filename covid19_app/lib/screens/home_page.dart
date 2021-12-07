import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _borderRadius = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,

        title: Text(
          'COVID-19 TRACKER',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
           ),
          ),
      ),
      body: Container(
        child: Padding( 
          padding: const EdgeInsets.all(8.0),
          child: Stack(
          children: <Widget>[
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_borderRadius),
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.blueAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  ),
                boxShadow:[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 12,
                    offset: Offset(0,6),
                  ),
                ],
              ),

            ),
            Positioned.fill(
              child: Row(
                children: <Widget>[
                  Expanded(
                  child: Image.asset(
                    'images/covid_man.png',
                    height: 200, 
                    width: 200,),
                    flex: 4,
                  ),
                  Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'COVID 19 ', 
                           style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                          ),
                      ),
                      Text(
                        'SYMPTOMS', 
                           style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                          ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      /* RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                        onPressed: ()
                      {
                        print("See more");
                      },
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius:  BorderRadius.all(Radius.circular(30))),
                      child: Text("Learn more"),
                      ), */
                      ElevatedButton(
                        
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 30),
                          primary: Colors.white, //Button background color  
                          shape: RoundedRectangleBorder(borderRadius:  BorderRadius.all(Radius.circular(30))),
                          
                        ),
                        onPressed: (){
                          print("Learn more");
                        },
                        child: const Text('Learn more'),
                        ),
                    ],
                   ),
                   flex: 4
                  ),
                ],
              ),
            ),
          ],

        ),
      ),
        ),
    );
  }
}