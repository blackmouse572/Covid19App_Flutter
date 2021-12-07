import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'screens/submit_form.dart';
import 'screens/travel_history.dart';
import 'screens/home_page.dart';
import 'screens/vaccination.dart';

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
    //Text('Home'),
    //Text('Syringe'),
    const HomePage(), //Kết nối với file home_page
    const Vaccination(), //Kết nối với file vaccination
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
          return MaterialApp(
            home: Text('Cannot take information from Firebase'),
          );
          ;
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
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.create),
                    label: 'Vaccine Check',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.history),
                    label: 'Travel History',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.format_align_justify),
                    label: 'Declaration',
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
        return MaterialApp(
          home: Center(child: Text('LOADING...')),
        );
      },
    );
  }
}
