class TravelPlaces {
  String national;
  String city;
  String district;
  String street;
  DateTime time;
  TravelPlaces(this.national, this.city, this.district, this.street, this.time);
  Map<String, dynamic> toJson() => {
        "national": national,
        "city": city,
        "distric": district,
        "street": street,
        "time": time.toIso8601String()
      };
}
