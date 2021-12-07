import 'dart:convert';
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';
import 'package:covid19_app/travel_history_json.dart';
import 'package:flutter/services.dart' as rootBundle;

class TravelHistory extends StatefulWidget {
  const TravelHistory({Key? key}) : super(key: key);

  @override
  _TravelHistoryState createState() => _TravelHistoryState();
}

class _TravelHistoryState extends State<TravelHistory> {
  Future<List<TraveledHistory>> ReadJsonData() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('Data/traveled_history.json');
    final list = json.decode(jsonData) as List<dynamic>;

    return list.map((e) => TraveledHistory.fromJson(e)).toList();
  }

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
              FutureBuilder(
                future: ReadJsonData(),
                builder: (context, data) {
                  if (data.hasError) {
                    return Column(
                      children: <Widget>[
                        const SizedBox(height: 20),
                        Text('${data.error}')
                      ],
                    );
                  } else if (!data.hasData) {
                    return const NoItem();
                  } else if (data.hasData) {
                    var items = data.data as List<TraveledHistory>;
                    return Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: items.length,
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
                                        borderRadius: kCornerRadius,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/unlocated.jpg'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 100,
                                      padding: kItemPadding,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  '${items[index].street}, ${items[index].district}, ${items[index].city}, ${items[index].national}',
                                                  style: kTextContent,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                ),
                                              )
                                            ],
                                          ),
                                          Text(
                                            '${items[index].time}',
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
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
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
