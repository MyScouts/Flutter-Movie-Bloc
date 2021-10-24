class WeatherModel {
  double? latitude;
  double? longitude;
  String? timezone;
  Currently? currently;

  WeatherModel({
    this.latitude,
    this.longitude,
    this.timezone,
    this.currently,
  });

  WeatherModel.fromJson(dynamic json) {
    latitude = json["latitude"];
    longitude = json["longitude"];
    timezone = json["timezone"];
    currently = Currently.fromJson(json["currently"]);
  }
}

class Currently {
  int? time;
  String? summary;
  String? icon;
  // int? nearestStormDistance;
  // int? nearestStormBearing;
  // int? precipIntensity;
  // int? precipProbability;
  double? temperature;
  double? apparentTemperature;
  // double? dewPoint;
  // double? humidity;
  // double? pressure;
  // double? windSpeed;
  // double? windGust;
  // int? windBearing;
  // double? cloudCover;
  // int? uvIndex;
  // int? visibility;
  // dynamic ozone;

  Currently.fromJson(dynamic json) {
    time = json["time"];
    summary = json["summary"];
    icon = json["icon"];
    // nearestStormDistance = json["nearestStormDistance"];
    // nearestStormBearing = json["nearestStormBearing"];
    // precipIntensity = json["precipIntensity"];
    // precipProbability = json["precipProbability"];
    temperature = json["temperature"];
    apparentTemperature = json["apparentTemperature"];
    // dewPoint = json["dewPoint"];
    // humidity = json["humidity"];
    // pressure = json["pressure"];
    // windSpeed = json["windSpeed"];
    // windGust = json["windGust"];
    // windBearing = json["windBearing"];
    // cloudCover = json["cloudCover"];
    // uvIndex = json["uvIndex"];
    // visibility = json["visibility"];
    // ozone = json["ozone"];
  }
}
