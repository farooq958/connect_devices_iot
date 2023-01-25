// To parse this JSON data, do
//
//     final favouriteDevices = favouriteDevicesFromJson(jsonString);

import 'dart:convert';

FavouriteDevices favouriteDevicesFromJson(String str) => FavouriteDevices.fromJson(json.decode(str));

String favouriteDevicesToJson(FavouriteDevices data) => json.encode(data.toJson());

class FavouriteDevices {
  FavouriteDevices({
    required this.status,
    required this.favouriteDevices,
  });

  final String status;
    final List<FavouriteDevice> favouriteDevices;

  factory FavouriteDevices.fromJson(Map<String, dynamic> json) => FavouriteDevices(
    status: json["status"],
    favouriteDevices:json["favouriteDevices"] != null ? List<FavouriteDevice>.from(json["favouriteDevices"].map((x) => FavouriteDevice.fromJson(x))):json["userDevices"] != null?List<FavouriteDevice>.from(json["userDevices"].map((x) => FavouriteDevice.fromJson(x))):<FavouriteDevice>[],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "favouriteDevices": List<dynamic>.from(favouriteDevices.map((x) => x.toJson())),
  };
}

class FavouriteDevice {
  FavouriteDevice({
    required this.id,
    required this.deviceId,
    required this.placeId,
    required this.name,
    required this.v,
  });

  final String id;
  final String deviceId;
  final String placeId;
  final String name;
  final int v;

  factory FavouriteDevice.fromJson(Map<String, dynamic> json) => FavouriteDevice(
    id: json["_id"],
    deviceId: json["device_id"],
    placeId: json["place_id"],
    name: json["name"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "device_id": deviceId,
    "place_id": placeId,
    "name": name,
    "__v": v,
  };
}
