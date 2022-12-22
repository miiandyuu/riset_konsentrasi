class CoordinateModel {
  // final int readTime;
  final String coordinateX;
  final String coordinateY;

  CoordinateModel({
    // required this.readTime,
    required this.coordinateX,
    required this.coordinateY,
  });

  factory CoordinateModel.fromJson(Map<String, dynamic> json) {
    // for (int i = 0; i < 5; i++) {
    //   return CoordinateModel(
    //       readTime: json['$i'], coordinateX: json[''], coordinateY: json['']);
    // }
    return CoordinateModel(coordinateX: json['x'], coordinateY: json['y']);
  }
}
