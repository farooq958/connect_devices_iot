// To parse this JSON data, do
//
//     final registerDevice = registerDeviceFromJson(jsonString);

import 'dart:convert';

EditDevice editDeviceFromJson(String str) => EditDevice.fromJson(json.decode(str));

String editDeviceToJson(EditDevice data) => json.encode(data.toJson());

class EditDevice {
  EditDevice({
    required this.status,
    required this.message,
  });

  final String status;
  final String message;

  factory EditDevice.fromJson(Map<String, dynamic> json) => EditDevice(
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
  };
}
