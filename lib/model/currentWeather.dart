// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clima_check/model/clouds.dart';
import 'package:clima_check/model/coord.dart';
import 'package:clima_check/model/main_Wather.dart';
import 'package:clima_check/model/sys.dart';
import 'package:clima_check/model/weather.dart';
import 'package:clima_check/model/wind.dart';

class CurrentWeather {
  Coord? coord;
  List<Weather>? weather;
  MainWeather? mainWeather;
  Wind? wind;
  Sys? sys;
  Clouds? clouds;
  int? visibility,dt,timezone,id,cod;
  String? base,name; 


  CurrentWeather({
    this.coord,
    this.weather,
    this.mainWeather,
    this.wind,
    this.sys,
    this.visibility,dt,timezone,id,cod,
    this.base,name,
    this.clouds
  });

  factory CurrentWeather.fromJson(Map<String,dynamic> map){
    return CurrentWeather(
      coord: Coord.fromJson(map["coord"]),
      weather: List.of((map["weather"]).map((e) => Weather.fromJson(e)).toList()),
      mainWeather: MainWeather.fromJson(map["main"]),
      wind: Wind.fromJson(map["wind"]),
      clouds: Clouds.fromJson(map["clouds"]),
      sys: Sys.fromJson(map["sys"]),
      base: map["base"],
      visibility: int.parse(map["visibility"]),
      dt: int.parse(map["dt"]),
      timezone: int.parse(map["timezone"]),
      id: int.parse(map["id"]),
      name: map["name"],
      cod: int.parse(map["cod"])
    );
  }
}
