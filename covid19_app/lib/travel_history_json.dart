class TraveledHistory {
  String? national;
  String? city;
  String? district;
  String? street;
  String? time;

  TraveledHistory(
      this.national, this.city, this.district, this.street, this.time);

  TraveledHistory.fromJson(Map<String, dynamic> json) {
    national = json['national'];
    city = json['city'];
    district = json['district'];
    street = json['street'];
    time = json['time'];
  }
}
