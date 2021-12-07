//FIREBASE PAKAGE
import 'package:date_time_picker/date_time_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//FLUTTER PAKAGE
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//CONSTANTS
import 'package:covid19_app/constant.dart';

void main(List<String> args) {
  runApp(SubmitForm());
}

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
  late String _time;

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

  //final FirebaseFirestore firestore = FirebaseFirestore.instance;
  //Build 4 Text filed
  Widget _buildFormTextView() {
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
            onFieldSubmitted: (String value) {
              _nextFocus(_cityFocusNode);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'Nation',
            ),
            onChanged: (value) => _national = value,
          ),
          SizedBox(height: spacer),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            focusNode: _cityFocusNode,
            controller: _cityController,
            onFieldSubmitted: (String value) {
              _nextFocus(_districtFocusNode);
            },
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
            onChanged: (value) => _city = value,
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
            onFieldSubmitted: (String value) {
              _nextFocus(_streetFocusNode);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'District',
            ),
            onChanged: (value) => _district = value,
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
            onFieldSubmitted: (String value) {
              _nextFocus(_nationalFocusNode);
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.all(Radius.circular(radius)),
              ),
              labelText: 'Street',
            ),
            onChanged: (value) => _street = value,
          ),
          SizedBox(height: spacer),
          DateTimePicker(
            type: DateTimePickerType.dateTimeSeparate,
            dateMask: 'd MMM, yyy',
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2100),
            icon: Icon(Icons.event),
            dateLabelText: 'Date',
            timeLabelText: "Hour",
            onChanged: (val) {
              _time = val;
            },
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

  @override
  Widget build(BuildContext context) {
    CollectionReference _history =
        FirebaseFirestore.instance.collection('Histories');
    Future<void> addTraveledHistory() {
      return _history
          .add({
            'national': _national,
            'city': _city,
            'district': _district,
            'time': _time,
            'street': _street
          })
          .then((value) => print(value))
          .catchError((err) => print(err));
    }

    void _submitForm() {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState!.save();
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Submit record successfully !')));

        _formKey.currentState!.reset();
        addTraveledHistory();
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Please re-enter form !')));
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
                        _buildFormTextView(),
                        const SizedBox(height: 30.0),
                        SizedBox(
                          width: double.infinity,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              print('Submitted !');
                              _submitForm();
                              //addTraveledHistory();
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  kColorPrimaryColor),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(25.0))),
                            ),
                            child: const Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            ),
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
