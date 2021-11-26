class UserModel {
  late String city;
  late String cityIbgeCode;
  late int confirmed;
  late double confirmedPer100kInhabitants;
  late String date;
  late double deathRate;
  late int deaths;
  late int estimatedPopulation;
  late int estimatedPopulation2019;
  late bool isLast;
  late int orderForPlace;
  late String placeType;
  late String state;

  UserModel(
      {required this.city,
      required this.cityIbgeCode,
      required this.confirmed,
      required this.confirmedPer100kInhabitants,
      required this.date,
      required this.deathRate,
      required this.deaths,
      required this.estimatedPopulation,
      required this.estimatedPopulation2019,
      required this.isLast,
      required this.orderForPlace,
      required this.placeType,
      required this.state});

  UserModel.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    cityIbgeCode = json['city_ibge_code'];
    confirmed = json['confirmed'];
    confirmedPer100kInhabitants = json['confirmed_per_100k_inhabitants'];
    date = json['date'];
    deathRate = json['death_rate'];
    deaths = json['deaths'];
    estimatedPopulation = json['estimated_population'];
    estimatedPopulation2019 = json['estimated_population_2019'];
    isLast = json['is_last'];
    orderForPlace = json['order_for_place'];
    placeType = json['place_type'];
    state = json['state'];
  }
}
