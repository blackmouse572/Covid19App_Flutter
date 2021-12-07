import 'package:covid19_app/screens/submit_form.dart';
import 'package:covid19_app/screens/travel_history.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  final List<Widget> _widgetOptions = <Widget>[
    Text('Home'),
    Text('Syringe'),
    // const HomePage(), //Kết nối với file home_page
    // Vaccination(), //Kết nối với file vaccination
    const TravelHistory(), //Kết nối với file travel_history
    const SubmitForm(), //Kết nối với file submit_form
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return SomethingWentWrong();
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              appBar: AppBar(
                title: const Text(
                  'COVID-19 TRACKER',
                  style: kTextTitle,
                ),
                backgroundColor: kColorBackGround,
                actions: const <Widget>[
                  IconButton(onPressed: null, icon: Icon(Icons.person))
                ],
              ),
              body: _widgetOptions.elementAt(_selectedIndex),
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_filled),
                    title: Text('Home'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.create),
                    title: Text('Vaccine Check'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    title: Text('Travel History'),
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.format_align_justify),
                    title: Text('Declaration'),
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: kColorPrimaryColor,
                onTap: _onItemTap,
              ),
            ),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Loading();
      },
    );
  }
}

Widget SomethingWentWrong() {
  return Material(
    child: Center(child: Text('SOME THING WENT WRONG')),
  );
}

Widget Loading() {
  return Material(
    child: Center(child: Text('LOADING...')),
  );
}
