import 'package:covid19_app/models/travel_places.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:covid19_app/constant.dart';

class SubmitForm extends StatefulWidget {
  const SubmitForm({Key? key}) : super(key: key);

  @override
  _SubmitFormState createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  //Atributes of History traveled
  late String _national;
  late String _city;
  late String _district;
  late String _street;
  List<TravelPlaces>? travelPlaces;
  final _formKey = GlobalKey<FormState>();
  //FocusNode
  final FocusNode _nationalFocusNode = FocusNode();
  final FocusNode _cityFocusNode = FocusNode();
  final FocusNode _districtFocusNode = FocusNode();
  final FocusNode _streetFocusNode = FocusNode();
  //controller
  final TextEditingController _nationalController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();

  //Build 4 Text filed
  Widget buildFormTextView() {
    double spacer = 30; //space between each field
    const double radius = 25; //TextField bordius

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //NATION
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: _nationalFocusNode,
            controller: _nationalController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Nation you have traveled';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'Nation',
            ),
          ),
          SizedBox(height: spacer),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: _cityFocusNode,
            controller: _cityController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter City you have traveled';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'City',
            ),
          ),
          SizedBox(height: spacer),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: _districtFocusNode,
            controller: _districtController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter Distric you have traveled';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'District',
            ),
          ),
          SizedBox(height: spacer),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: _streetFocusNode,
            controller: _streetController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter  you have traveled';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'Street',
            ),
          ),
        ],
      ),
    );
  }

  //Move to next field by FocusNode
  _nextFocus(FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  //check if the TextField is filled
  _submitForm() {
    if (_formKey.currentState!.validate()) {
      DateTime time = DateTime.now();
      travelPlaces!
          .add(TravelPlaces(_national, _city, _district, _street, time));

      _formKey.currentState!.save();
      _formKey.currentState!.reset();
      _nextFocus(_nationalFocusNode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SingleChildScrollView(
        child: Builder(
            builder: (context) => Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Text(
                          'COVID 19 declaration',
                          style: kTextTitle,
                        ),
                        const SizedBox(height: 20.0),
                        const Text(
                          'Personal Information',
                          style: kTextContent,
                        ),
                        buildFormTextView(),
                        const SizedBox(height: 5.0),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: _submitForm,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  kColorPrimaryColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0))),
                            ),
                            child: const Text('Submit',
                                style: TextStyle(color: kColorTextColor)),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
      )),
    );
  }
}
