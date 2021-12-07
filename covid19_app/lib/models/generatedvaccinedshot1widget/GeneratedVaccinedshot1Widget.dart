import 'package:flutter/material.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedGroup2Widget1.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/Generated1920pxEo_circle_yellow_white_checkmark1Widget.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedGroup3Widget3.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedRectangle5Widget1.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedCERTIFICATEFOR01PERVACCINATIONWidget.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedNavBarWidget5.dart';
import 'package:covid19_app/models/generatedvaccinedshot1widget/generated/GeneratedBottombarWidget4.dart';

/* Frame Vaccined shot 1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedVaccinedshot1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          overflow: Overflow.visible,
          children: [
            Container(
              width: 375.0,
              height: 812.0,
              child: Stack(
                  fit: StackFit.expand,
                  alignment: Alignment.center,
                  overflow: Overflow.visible,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.zero,
                      child: Container(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                    Positioned(
                      left: 21.0,
                      top: 109.0,
                      right: null,
                      bottom: null,
                      width: 336.0,
                      height: 589.0,
                      child: GeneratedRectangle5Widget1(),
                    ),
                    Positioned(
                      left: 36.0,
                      top: 450.0,
                      right: null,
                      bottom: null,
                      width: 305.0,
                      height: 106.0,
                      child: GeneratedGroup2Widget1(),
                    ),
                    Positioned(
                      left: 36.0,
                      top: 450.0,
                      right: null,
                      bottom: null,
                      width: 305.0,
                      height: 106.0,
                      child: GeneratedGroup3Widget3(),
                    ),
                    Positioned(
                      left: 41.0,
                      top: 300.0,
                      right: null,
                      bottom: null,
                      width: 295.0,
                      height: 66.0,
                      child: GeneratedCERTIFICATEFOR01PERVACCINATIONWidget(),
                    ),
                    Positioned(
                      left: 144.0,
                      top: 178.0,
                      right: null,
                      bottom: null,
                      width: 90.0,
                      height: 90.0,
                      child:
                          Generated1920pxEo_circle_yellow_white_checkmark1Widget(),
                    ),
                    Positioned(
                      left: 0.0,
                      top: 0.0,
                      right: null,
                      bottom: null,
                      width: 375.0,
                      height: 90.0,
                      child: GeneratedNavBarWidget5(),
                    )
                  ]),
            ),
            Positioned(
              left: 0.0,
              top: 683.0,
              right: null,
              bottom: null,
              width: 375.0,
              height: 129.0,
              child: GeneratedBottombarWidget4(),
            )
          ]),
    ));
  }
}