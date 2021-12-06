import 'package:covid19_app/models/travel_places.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:covid19_app/constant.dart';

class SubmitForm extends StatefulWidget {
  const SubmitForm({Key? key}) : super(key: key);

  @override
  _SubmitFormState createState() => _SubmitFormState();
}

class _SubmitFormState extends State<SubmitForm> {
  late String _national;
  late String _city;
  late String _district;
  late String _street;
  final _formKey = GlobalKey<FormState>();
  final FocusNode _nationalFocusNode = FocusNode();
  final FocusNode _cityFocusNode = FocusNode();
  final FocusNode _districtFocusNode = FocusNode();
  final FocusNode _streetFocusNode = FocusNode();
  List<TravelPlaces>? travelPlaces;

  final TextEditingController _nationalController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _streetController = TextEditingController();
  Widget buildFormTextView() {
    double spacer = 30;
    const double radius = 25;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: _nationalFocusNode,
            controller: _nationalController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              hintText: 'Please enter nation you have traveled',
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
                return 'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              hintText: 'Please enter city you have traveled',
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
                return 'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              hintText: 'Please enter Distric you have traveled',
              labelText: 'Distric',
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
                return 'Please enter some text';
              }
              return null;
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              hintText: 'Please enter Street you have traveled',
              labelText: 'Street',
            ),
          ),
        ],
      ),
    );
  }

  _nextFocus(FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

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
          body: Builder(
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
                            child: OutlinedButton(
                              onPressed: _submitForm,
                              style: OutlinedButton.styleFrom(
                                shape: const StadiumBorder(),
                                side: const BorderSide(
                                    width: 2, color: Colors.black),
                              ),
                              child: const Text('Submit',
                                  style: TextStyle(color: kColorTextColor)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ))),
    );
  }
}
