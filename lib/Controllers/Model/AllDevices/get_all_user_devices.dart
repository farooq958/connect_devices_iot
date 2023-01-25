// To parse this JSON data, do
//
//     final allUserDevices = allUserDevicesFromJson(jsonString);

import 'dart:convert';

AllUserDevices allUserDevicesFromJson(String str) => AllUserDevices.fromJson(json.decode(str));

String allUserDevicesToJson(AllUserDevices data) => json.encode(data.toJson());

class AllUserDevices {
  AllUserDevices({
    required this.status,
    required this.userDevices,
  });

  final String status;
  final List<UserDevice> userDevices;

  factory AllUserDevices.fromJson(Map<String, dynamic> json) => AllUserDevices(
    status: json["status"],
    userDevices:json["userDevices"] != null ? List<UserDevice>.from(json["userDevices"].map((x) => UserDevice.fromJson(x))):<UserDevice>[],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "userDevices": List<dynamic>.from(userDevices.map((x) => x.toJson())),
  };
}

class UserDevice {
  UserDevice({
    required this.id,
    required this.orgId,
    required this.deviceId,
    required this.placeId,
    required this.name,
    required this.entryTime,
    required this.updatedAt,
    required this.v,
    required this.latitude,
    required this.longitude,
  });

  final String id;
  final String orgId;
  final String deviceId;
  final String placeId;
  final String name;
  final DateTime entryTime;
  final DateTime updatedAt;
  final int v;
  final Itude latitude;
  final Itude longitude;

  factory UserDevice.fromJson(Map<String, dynamic> json) => UserDevice(
    id: json["_id"],
    orgId: json["org_id"],
    deviceId: json["device_id"],
    placeId: json["place_id"],
    name: json["name"],
    entryTime: DateTime.parse(json["entry_time"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    v: json["__v"],
    latitude: Itude.fromJson(json["latitude"]),
    longitude: Itude.fromJson(json["longitude"]),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "org_id": orgId,
    "device_id": deviceId,
    "place_id": placeId,
    "name": name,
    "entry_time": entryTime.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "__v": v,
    "latitude": latitude.toJson(),
    "longitude": longitude.toJson(),
  };
}

class Itude {
  Itude({
    required this.numberDecimal,
  });

  final String numberDecimal;

  factory Itude.fromJson(Map<String, dynamic> json) => Itude(
    numberDecimal: json["\u0024numberDecimal"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024numberDecimal": numberDecimal,
  };
}
