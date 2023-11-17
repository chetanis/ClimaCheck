
class Coord {
  double? lon;
  double? lat;

  Coord({
    this.lon,lat,
  });
  
  Map<String, dynamic> toJson() {
    return {
      "lon":lon,
      "lat":lat
    };
  }

  factory Coord.fromJson(Map<String, dynamic> map) {
    return Coord(
      lon: double.parse(map["lon"]),
      lat: double.parse(map["lat"])
    );
  }

}
