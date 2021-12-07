import 'package:covid19_app/models/travel_models/travel_places.dart';

class TravelHistory {
  DateTime time;
  List<TravelPlaces> travelPlaces;
  TravelHistory(this.time, this.travelPlaces);
}
