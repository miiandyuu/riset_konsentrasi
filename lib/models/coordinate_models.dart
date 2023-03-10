class CoordinateModel {
  final String coordinateX;
  final String coordinateY;

  CoordinateModel({
    required this.coordinateX,
    required this.coordinateY,
  });

  factory CoordinateModel.fromJson(Map<String, dynamic> json) {
    return CoordinateModel(coordinateX: json['x'], coordinateY: json['y']);
  }
}
