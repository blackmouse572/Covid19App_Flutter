import 'package:flutter/material.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedHomeWidget6.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedHistoryWidget5.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedRectangle4Widget4.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedCreateWidget4.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedFormat_align_justifyWidget4.dart';

/* Frame Bottom bar
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedBottombarWidget4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 375.0,
        height: 129.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 0.0,
                top: 36.0,
                right: null,
                bottom: null,
                width: 375.0,
                height: 93.0,
                child: GeneratedRectangle4Widget4(),
              ),
              Positioned(
                left: 44.0,
                top: 74.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 24.0,
                child: GeneratedHomeWidget6(),
              ),
              Positioned(
                left: 131.0,
                top: 65.0,
                right: null,
                bottom: null,
                width: 36.0,
                height: 36.0,
                child: GeneratedCreateWidget4(),
              ),
              Positioned(
                left: 218.0,
                top: 71.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 24.0,
                child: GeneratedHistoryWidget5(),
              ),
              Positioned(
                left: 305.0,
                top: 71.0,
                right: null,
                bottom: null,
                width: 24.0,
                height: 24.0,
                child: GeneratedFormat_align_justifyWidget4(),
              )
            ]),
      ),
    );
  }
}
