import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';
import 'package:covid19_app/models/travel_histories.dart';

class TravelHistory extends StatefulWidget {
  const TravelHistory({Key? key}) : super(key: key);

  @override
  _TravelHistoryState createState() => _TravelHistoryState();
}

class _TravelHistoryState extends State<TravelHistory> {
  // final _isHaveItem = false;

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
              //
              //
              //End: Items
              Items()
              // _isHaveItem ? const Items() : const NoItem(),
            ],
          ),
        ),
      ),
    );
  }
}

// Have Items
class TravelHistories {
  String date;
  String place;
  TravelHistories(this.date, this.place);
}

class Items extends StatefulWidget {
  const Items({Key? key}) : super(key: key);

  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final List<TravelHistories> _items = [
    TravelHistories('00:00-24/12/2021', 'Somewhere đbrr'),
    TravelHistories('00:00-25/12/2021', 'Somewhere vcl'),
    TravelHistories('00:00-30/12/2021', 'Somewhere cc'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: _items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
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
                        image: AssetImage('assets/images/unlocated.jpg'),
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
                      children: <Widget>[
                        Text(
                          _items[index].place,
                          style: kTextContent,
                        ),
                        Text(
                          _items[index].date,
                          style: kTextSubContent,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}

// No Item
class NoItem extends StatelessWidget {
  const NoItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        SizedBox(
          height: 40,
        ),
        Text('Do not have places to show')
      ],
    );
  }
}
