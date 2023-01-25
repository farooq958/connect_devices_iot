// To parse this JSON data, do
//
//     final registerDevice = registerDeviceFromJson(jsonString);

import 'dart:convert';

RegisterDevice registerDeviceFromJson(String str) => RegisterDevice.fromJson(json.decode(str));

String registerDeviceToJson(RegisterDevice data) => json.encode(data.toJson());

class RegisterDevice {
  RegisterDevice({
    required this.status,
    required this.message,
  });

  final String status;
  final String message;

  factory RegisterDevice.fromJson(Map<String, dynamic> json) => RegisterDevice(
    status: json["status"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
  };
}
