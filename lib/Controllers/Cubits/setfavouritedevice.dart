
import 'dart:convert';

SetFavouriteDevice setFavouriteDeviceFromJson(String str) => SetFavouriteDevice.fromJson(json.decode(str));

String setFavouriteDeviceToJson(SetFavouriteDevice data) => json.encode(data.toJson());

class SetFavouriteDevice {
  SetFavouriteDevice({
    required this.status,
    required this.message,
  });

  final String status;
  final String message;

  factory SetFavouriteDevice.fromJson(Map<String, dynamic> json) => SetFavouriteDevice(
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
  };
}