class MainWeather {
  double? temp,feels_like,temp_min,temp_max;
  int? pressure,humidity,sea_level,grnd_level;

  MainWeather({
    this.temp,feels_like,temp_min,temp_max,
    this.pressure,humidity,sea_level,grnd_level,
  });

  

  Map<String, dynamic> toJson() {
    return {
      "temp":temp,
      "feels_like":feels_like,
      "temp_min":temp_min,
      "temp_max":temp_max,
      "pressure":pressure,
      "humidity":humidity,
      "sea_level":sea_level,
      "grnd_level":grnd_level,
    };
  }

  factory MainWeather.fromJson(Map<String, dynamic> map) {
    return MainWeather(
      temp:double.parse( map["temp"]),
      feels_like:double.parse(map["feels_like"]),
      temp_min:double.parse(map["temp_min"]),
      temp_max:double.parse(map["temp_max"]),
      pressure:map["pressure"],
      humidity:map["humidity"],
      sea_level:map["sea_level"],
      grnd_level:map["grnd_level"]
    );
  }

}
