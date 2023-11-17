class Sys {
  int? type,id,sunrise,sunset;
  String? country;

  Sys({
    this.type,id,sunrise,sunset,
    this.country,
  });

  Map<String,dynamic> toJson(){
    return {
      "type":type,
      "id":id,
      "sunrise":sunrise,
      "sunset":sunset,
      "country":country
    };
  }

  factory Sys.fromJson(Map<String,dynamic> map){
    return Sys(
      type: int.parse(map["type"]),
      id: int.parse(map["id"]),
      sunrise: int.parse(map["sunrise"]),
      sunset: int.parse(map["sunset"]),
      country: map["country"]
    );
  }
}
