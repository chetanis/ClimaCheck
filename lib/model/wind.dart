// ignore_for_file: public_member_api_docs, sort_constructors_first
class Wind {

    double? speed,gust;
    int? deg;
  Wind({
    this.speed,gust,
    this.deg,
  });

  Map<String,dynamic> toJson(){
    return{
      "speed":speed,
      "deg":deg,
      "gust":gust,
    };
  }

  factory Wind.fromJson(Map<String,dynamic> map){
    return Wind(
      speed: double.parse(map["speed"]),
      deg: map["deg"],
      gust: double.parse(map["gust"]),
    );
  }
}
