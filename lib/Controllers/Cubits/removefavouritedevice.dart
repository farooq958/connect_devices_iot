
import 'dart:convert';

RemoveFavouriteDevice removeFavouriteDeviceFromJson(String str) => RemoveFavouriteDevice.fromJson(json.decode(str));

String removeFavouriteDeviceToJson(RemoveFavouriteDevice data) => json.encode(data.toJson());

class RemoveFavouriteDevice {
  RemoveFavouriteDevice({
    required this.status,
    required this.message,
  });

  final String status;
  final String message;

  factory RemoveFavouriteDevice.fromJson(Map<String, dynamic> json) => RemoveFavouriteDevice(
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
  };
}