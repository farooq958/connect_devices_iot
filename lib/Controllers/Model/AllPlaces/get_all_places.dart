// To parse this JSON data, do
//
//     final allPlacesModel = allPlacesModelFromJson(jsonString);

import 'dart:convert';

AllPlacesModel allPlacesModelFromJson(String str) => AllPlacesModel.fromJson(json.decode(str));

String allPlacesModelToJson(AllPlacesModel data) => json.encode(data.toJson());

class AllPlacesModel {
  AllPlacesModel({
    required this.status,
    required this.places,
  });

  final String status;
  final List<Place> places;

  factory AllPlacesModel.fromJson(Map<String, dynamic> json) => AllPlacesModel(
    status: json["status"],
    places:json["places"] != null? List<Place>.from(json["places"].map((x) => Place.fromJson(x))):<Place>[],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "places": List<dynamic>.from(places.map((x) => x.toJson())),
  };
}

class Place {
  Place({
    required this.id,
    required this.coordinates,
    required this.description,
    required this.placeName,
    required this.orgId,
    required this.parentId,
    required this.type,
    required this.status,
    required this.entryTime,
    required this.updatedAt,
    required this.v,
  });

  final String id;
  final Coordinates coordinates;
  final String description;
  final String placeName;
  final int orgId;
  final int parentId;
  final String type;
  final int status;
  final DateTime entryTime;
  final DateTime updatedAt;
  final int v;

  factory Place.fromJson(Map<String, dynamic> json) => Place(
    id: json["_id"],
    coordinates: Coordinates.fromJson(json["coordinates"]),
    description: json["description"],
    placeName: json["place_name"],
    orgId: json["org_id"],
    parentId: json["parent_id"],
    type: json["type"],
    status: json["status"],
    entryTime: DateTime.parse(json["entry_time"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "coordinates": coordinates.toJson(),
    "description": description,
    "place_name": placeName,
    "org_id": orgId,
    "parent_id": parentId,
    "type": type,
    "status": status,
    "entry_time": entryTime.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class Coordinates {
  Coordinates({
    required this.longitude,
    required this.latitude,
  });

  final String longitude;
  final String latitude;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
    longitude: json["longitude"],
    latitude: json["latitude"],
  );

  Map<String, dynamic> toJson() => {
    "longitude": longitude,
    "latitude": latitude,
  };
}
