import 'package:covid19_app/models/travel_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SubmitForm extends StatefulWidget {
  const SubmitForm({Key? key}) : super(key: key);

  @override
  _SubmitFormState createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    List<TravelPlaces> travelPlaces;
    DateTime time;
    String national;
    String city;
    String district;
    String address;
    return Scaffold(
        body: Container(
      child: Builder(
          builder: (context) => Form(
                key: _formKey,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'COVID 19 declaration',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text('Personal Information'),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'National'),
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter nation you arrived !';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Distric'),
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter distric you arrived !';
                          }
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Street'),
                        validator: (value) {
                          if (value == null) {
                            return 'Please enter street you arrived !';
                          }
                        },
                      ),
                    ],
                  ),
                ),
              )),
    ));
  }
}
