import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';

class TravelHistory extends StatefulWidget {
  const TravelHistory({Key? key}) : super(key: key);

  @override
  _TravelHistoryState createState() => _TravelHistoryState();
}

class _TravelHistoryState extends State<TravelHistory> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: kContainerPadding,
          height: 593,
          decoration: const BoxDecoration(
            color: kColorBackGround,
          ),
          child: Column(
            children: [
              Row(
                children: const <Widget>[
                  Text(
                    'Travel History',
                    style: kTextHeading,
                  ),
                  Expanded(child: Text('')),
                  Text(
                    '72 hours',
                    style: kSmallContent,
                  )
                ],
              ),

              //Begin: Items
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                    boxShadow: kBlockShadow,
                    borderRadius: kBorderRadius,
                    color: kColorBackGround),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      decoration: const BoxDecoration(
                        color: kColorRed,
                        borderRadius: kCornerRadius,
                        image: DecorationImage(
                          image: AssetImage('assets/img/unlocated.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      padding: kItemPadding,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Text(
                            'Somewhere',
                            style: kTextContent,
                          ),
                          Text(
                            '00:00 - 25/12/2021',
                            style: kTextSubContent,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //End: Items
            ],
          ),
        ),
      ),
    );
  }
}
