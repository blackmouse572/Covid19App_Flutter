import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';
import 'package:covid19_app/screens/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid 19',
      theme: ThemeData(
        
        scaffoldBackgroundColor: kBackGround,

        textTheme: TextTheme(bodyText1: TextStyle(color: kTextColor)),
      ),
      home: HomePage(),
    );
  }
}
/* class HomeSreen extends StatelessWidget {
  const HomeSreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      children:<Widget> [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
          height: 350,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF3383CD),
                Color(0xFF11249F),
                ],
              ),
              image: DecorationImage( 
                image: AssetImage("assets/images/virus.png"),
                 )
              ),
              ),
              )
            
          ],
        )
    );
  }
}

class MyClipper extends CustomClipper<Path>{
  @override 
  Path getClip(Size size){
    var path  = Path();
    path.lineTo(0, size.height -80);
    path.quadraticBezierTo(
      size.width/2, size.height, size.width, size.height -80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override 
  bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
  }
} */