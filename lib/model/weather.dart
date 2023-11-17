
class Weather {
  int? id;
  String? main,description,icon;

  Weather({
    this.id,
    this.main,description,icon,
  });

  Map<String,dynamic> toJson(){
    return{
      "id": id,
      "main" : main,
      "description": description,
      "icon":icon,
    };
  }

  factory Weather.fromJson(Map<String,dynamic> map){
    return Weather(
      id: map["id"],
      main: map["main"],
      description: map["description"],
      icon: map["icon"]
    );
  }
}
