import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:covid19_app/constant.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TravelHistory());
}

class TravelHistory extends StatefulWidget {
  const TravelHistory({Key? key}) : super(key: key);

  @override
  _TravelHistoryState createState() => _TravelHistoryState();
}

class _TravelHistoryState extends State<TravelHistory> {
  final Stream<QuerySnapshot> data =
      FirebaseFirestore.instance.collection('Histories').snapshots();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: kContainerPadding,
          child: Column(
            children: <Widget>[
              // Title: Travel History
              const Title(),

              Expanded(
                child: StreamBuilder<QuerySnapshot>(
                  stream: data,
                  builder: (BuildContext context,
                      AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return const Text('Something went wrong!');
                    }
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if (!snapshot.hasData) {
                      const NoItem();
                    }

                    final item = snapshot.requireData;

                    return ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: item.size,
                        itemBuilder: (context, index) {
                          return SizedBox(
                            height: 120,
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: const BoxDecoration(
                                      boxShadow: kBlockShadow,
                                      color: Colors.white),
                                  height: 100,
                                  child: Row(
                                    children: <Widget>[
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
                                      SizedBox(width: 10),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${item.docs[index]['street']}, ${item.docs[index]['district']},${item.docs[index]['city']}, ${item.docs[index]['national']}',
                                            style: kTextContent,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 2,
                                          ),
                                          Text(
                                            '${item.docs[index]['time'].toString()}',
                                            style: kTextSubContent,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
              )
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

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
