// To parse this JSON data, do
//
//     final deviceDetail = deviceDetailFromJson(jsonString);

import 'dart:convert';

DeviceDetail deviceDetailFromJson(String str) => DeviceDetail.fromJson(json.decode(str));

String deviceDetailToJson(DeviceDetail data) => json.encode(data.toJson());

class DeviceDetail {
  DeviceDetail({
    required this.upperData,
    required this.objectsTypes,
    required this.deviceProfileId,
    required this.userDevice,
    required this.deviceProfile,
    required this.dpoStramConfigData,
    required this.objects,
  });

  final UpperData upperData;
  final List<ObjectsType> objectsTypes;
  final ProfileId deviceProfileId;
  final UserDevice userDevice;
  final DeviceProfile deviceProfile;
  final DpoStramConfigData dpoStramConfigData;
  final List<Object> objects;

  factory DeviceDetail.fromJson(Map<String, dynamic> json) => DeviceDetail(
    upperData: UpperData.fromJson(json["upperData"]),
    objectsTypes: List<ObjectsType>.from(json["objectsTypes"].map((x) => ObjectsType.fromJson(x))),
    deviceProfileId: ProfileId.fromJson(json["deviceProfileId"]),
    userDevice: UserDevice.fromJson(json["userDevice"]),
    deviceProfile: DeviceProfile.fromJson(json["deviceProfile"]),
    dpoStramConfigData: DpoStramConfigData.fromJson(json["DPO_stram_configData"]),
    objects: List<Object>.from(json["objects"].map((x) => Object.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "upperData": upperData.toJson(),
    "objectsTypes": List<dynamic>.from(objectsTypes.map((x) => x.toJson())),
    "deviceProfileId": deviceProfileId.toJson(),
    "userDevice": userDevice.toJson(),
    "deviceProfile": deviceProfile.toJson(),
    "DPO_stram_configData": dpoStramConfigData.toJson(),
    "objects": List<dynamic>.from(objects.map((x) => x.toJson())),
  };
}

class DeviceProfile {
  DeviceProfile({
    required this.id,
    required this.name,
    required this.type,
    required this.firmVersion,
    required this.uiConfig,
    required this.defaultControl,
    required this.ownerShip,
    required this.featuresDescription,
    required this.description,
  });

  final String id;
  final String name;
  final DeviceProfileType type;
  final String firmVersion;
  final UiConfig uiConfig;
  final DefaultControl defaultControl;
  final int ownerShip;
  final String featuresDescription;
  final String description;

  factory DeviceProfile.fromJson(Map<String, dynamic> json) => DeviceProfile(
    id: json["_id"],
    name: json["name"],
    type: DeviceProfileType.fromJson(json["type"]),
    firmVersion: json["firm_version"],
    uiConfig: UiConfig.fromJson(json["ui_config"]),
    defaultControl: DefaultControl.fromJson(json["default_control"]),
    ownerShip: json["owner_ship"],
    featuresDescription: json["features_description"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "type": type.toJson(),
    "firm_version": firmVersion,
    "ui_config": uiConfig.toJson(),
    "default_control": defaultControl.toJson(),
    "owner_ship": ownerShip,
    "features_description": featuresDescription,
    "description": description,
  };
}

class DefaultControl {
  DefaultControl({
    required this.valuesToLabel,
    required this.id,
    required this.streamId,
    required this.applyRuleEngine,
    required this.dpoRef,
    required this.logAnalytics,
    required this.logEvents,
    required this.uiControls,
    required this.uiDisplay,
    required this.uiIcon,
    required this.valueToLabel,
  });

  final List<dynamic> valuesToLabel;
  final String id;
  final String streamId;
  final bool applyRuleEngine;
  final String dpoRef;
  final bool logAnalytics;
  final bool logEvents;
  final String uiControls;
  final bool uiDisplay;
  final String uiIcon;
  final List<String> valueToLabel;

  factory DefaultControl.fromJson(Map<String, dynamic> json) => DefaultControl(
    valuesToLabel: List<dynamic>.from(json["values_to_label"].map((x) => x)),
    id: json["_id"],
    streamId: json["stream_id"],
    applyRuleEngine: json["apply_rule_engine"],
    dpoRef: json["dpo_ref"],
    logAnalytics: json["log_analytics"],
    logEvents: json["log_events"],
    uiControls: json["ui_controls"],
    uiDisplay: json["ui_display"],
    uiIcon: json["ui_icon"],
    valueToLabel: List<String>.from(json["value_to_label"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "values_to_label": List<dynamic>.from(valuesToLabel.map((x) => x)),
    "_id": id,
    "stream_id": streamId,
    "apply_rule_engine": applyRuleEngine,
    "dpo_ref": dpoRef,
    "log_analytics": logAnalytics,
    "log_events": logEvents,
    "ui_controls": uiControls,
    "ui_display": uiDisplay,
    "ui_icon": uiIcon,
    "value_to_label": List<dynamic>.from(valueToLabel.map((x) => x)),
  };
}

class DeviceProfileType {
  DeviceProfileType({
    required this.id,
    required this.type,
  });

  final String id;
  final String type;

  factory DeviceProfileType.fromJson(Map<String, dynamic> json) => DeviceProfileType(
    id: json["_id"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "type": type,
  };
}

class UiConfig {
  UiConfig({
    required this.uiIcon,
    required this.uiDisplay,
  });

  final String uiIcon;
  final bool uiDisplay;

  factory UiConfig.fromJson(Map<String, dynamic> json) => UiConfig(
    uiIcon: json["ui_icon"],
    uiDisplay: json["ui_display"],
  );

  Map<String, dynamic> toJson() => {
    "ui_icon": uiIcon,
    "ui_display": uiDisplay,
  };
}

class ProfileId {
  ProfileId({
    required this.id,
    required this.name,
    required this.type,
    required this.firmVersion,
    required this.uiConfig,
    required this.defaultControl,
    required this.ownerShip,
    required this.featuresDescription,
    required this.description,
  });

  final String id;
  final String name;
  final String type;
  final String firmVersion;
  final UiConfig uiConfig;
  final String defaultControl;
  final int ownerShip;
  final String featuresDescription;
  final String description;

  factory ProfileId.fromJson(Map<String, dynamic> json) => ProfileId(
    id: json["_id"],
    name: json["name"],
    type: json["type"],
    firmVersion: json["firm_version"],
    uiConfig: UiConfig.fromJson(json["ui_config"]),
    defaultControl: json["default_control"],
    ownerShip: json["owner_ship"],
    featuresDescription: json["features_description"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "type": type,
    "firm_version": firmVersion,
    "ui_config": uiConfig.toJson(),
    "default_control": defaultControl,
    "owner_ship": ownerShip,
    "features_description": featuresDescription,
    "description": description,
  };
}

class DpoStramConfigData {
  DpoStramConfigData({
    required this.valuesToLabel,
    required this.id,
    required this.streamId,
    required this.applyRuleEngine,
    required this.dpoRef,
    required this.logAnalytics,
    required this.logEvents,
    required this.uiControls,
    required this.uiDisplay,
    required this.uiIcon,
    required this.valueToLabel,
  });

  final List<dynamic> valuesToLabel;
  final String id;
  final StreamId streamId;
  final bool applyRuleEngine;
  final String dpoRef;
  final bool logAnalytics;
  final bool logEvents;
  final UiControls uiControls;
  final bool uiDisplay;
  final UiIcon uiIcon;
  final List<String> valueToLabel;

  factory DpoStramConfigData.fromJson(Map<String, dynamic> json) => DpoStramConfigData(
    valuesToLabel: List<dynamic>.from(json["values_to_label"].map((x) => x)),
    id: json["_id"],
    streamId: StreamId.fromJson(json["stream_id"]),
    applyRuleEngine: json["apply_rule_engine"],
    dpoRef: json["dpo_ref"],
    logAnalytics: json["log_analytics"],
    logEvents: json["log_events"],
    uiControls: UiControls.fromJson(json["ui_controls"]),
    uiDisplay: json["ui_display"],
    uiIcon: UiIcon.fromJson(json["ui_icon"]),
    valueToLabel: List<String>.from(json["value_to_label"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "values_to_label": List<dynamic>.from(valuesToLabel.map((x) => x)),
    "_id": id,
    "stream_id": streamId.toJson(),
    "apply_rule_engine": applyRuleEngine,
    "dpo_ref": dpoRef,
    "log_analytics": logAnalytics,
    "log_events": logEvents,
    "ui_controls": uiControls.toJson(),
    "ui_display": uiDisplay,
    "ui_icon": uiIcon.toJson(),
    "value_to_label": List<dynamic>.from(valueToLabel.map((x) => x)),
  };
}

class StreamId {
  StreamId({
    required this.id,
    required this.objectId,
    required this.dataUnit,
    required this.dataUnitSymbol,
    required this.dataUnitLabel,
    required this.minValue,
    required this.maxValue,
    required this.description,
  });

  final String id;
  final String objectId;
  final String dataUnit;
  final String dataUnitSymbol;
  final String dataUnitLabel;
  final int minValue;
  final int maxValue;
  final String description;

  factory StreamId.fromJson(Map<String, dynamic> json) => StreamId(
    id: json["_id"],
    objectId: json["object_id"],
    dataUnit: json["data_unit"],
    dataUnitSymbol: json["data_unit_symbol"],
    dataUnitLabel: json["data_unit_label"],
    minValue: json["min_value"],
    maxValue: json["max_value"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "object_id": objectId,
    "data_unit": dataUnit,
    "data_unit_symbol": dataUnitSymbol,
    "data_unit_label": dataUnitLabel,
    "min_value": minValue,
    "max_value": maxValue,
    "description": description,
  };
}

class UiControls {
  UiControls({
    required this.id,
    required this.frontendCode,
    required this.jsCode,
    required this.maxRange,
    required this.minRange,
    required this.name,
    required this.type,
  });

  final String id;
  final String frontendCode;
  final String jsCode;
  final String maxRange;
  final String minRange;
  final String name;
  final String type;

  factory UiControls.fromJson(Map<String, dynamic> json) => UiControls(
    id: json["_id"],
    frontendCode: json["frontend_code"],
    jsCode: json["js_code"],
    maxRange: json["max_range"],
    minRange: json["min_range"],
    name: json["name"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "frontend_code": frontendCode,
    "js_code": jsCode,
    "max_range": maxRange,
    "min_range": minRange,
    "name": name,
    "type": type,
  };
}

class UiIcon {
  UiIcon({
    required this.id,
    required this.fileId,
    required this.fileName,
    required this.name,
  });

  final String id;
  final String fileId;
  final String fileName;
  final String name;

  factory UiIcon.fromJson(Map<String, dynamic> json) => UiIcon(
    id: json["_id"],
    fileId: json["file_id"],
    fileName: json["file_name"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "file_id": fileId,
    "file_name": fileName,
    "name": name,
  };
}

class Object {
  Object({
    required this.id,
    required this.deviceProfileId,
    required this.objectId,
    required this.uiDisplay,
  });

  final String id;
  final String deviceProfileId;
  final ObjectId objectId;
  final bool uiDisplay;

  factory Object.fromJson(Map<String, dynamic> json) => Object(
    id: json["_id"],
    deviceProfileId: json["device_profile_id"],
    objectId: ObjectId.fromJson(json["object_id"]),
    uiDisplay: json["ui_display"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "device_profile_id": deviceProfileId,
    "object_id": objectId.toJson(),
    "ui_display": uiDisplay,
  };
}

class ObjectId {
  ObjectId({
    required this.id,
    required this.type,
    required this.name,
    required this.description,
    required this.entryTime,
    required this.label,
    required this.status,
  });

  final String id;
  final ObjectIdType type;
  final String name;
  final String description;
  final String entryTime;
  final String label;
  final bool status;

  factory ObjectId.fromJson(Map<String, dynamic> json) => ObjectId(
    id: json["_id"],
    type: ObjectIdType.fromJson(json["type"]),
    name: json["name"],
    description: json["description"],
    entryTime: json["entry_time"],
    label: json["label"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "type": type.toJson(),
    "name": name,
    "description": description,
    "entry_time": entryTime,
    "label": label,
    "status": status,
  };
}

class ObjectIdType {
  ObjectIdType({
    required this.id,
    required this.name,
    required this.type,
  });

  final String id;
  final String name;
  final String type;

  factory ObjectIdType.fromJson(Map<String, dynamic> json) => ObjectIdType(
    id: json["_id"],
    name: json["name"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "name": name,
    "type": type,
  };
}

class ObjectsType {
  ObjectsType({
    required this.objectProfileId,
    required this.deviceProfileId,
    required this.objectId,
    required this.type,
    required this.name,
  });

  final String objectProfileId;
  final String deviceProfileId;
  final String objectId;
  final String type;
  final String name;

  factory ObjectsType.fromJson(Map<String, dynamic> json) => ObjectsType(
    objectProfileId: json["object_profile_id"],
    deviceProfileId: json["device_profile_id"],
    objectId: json["object_id"],
    type: json["type"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "object_profile_id": objectProfileId,
    "device_profile_id": deviceProfileId,
    "object_id": objectId,
    "type": type,
    "name": name,
  };
}

class UpperData {
  UpperData({
    required this.deviceId,
    required this.group,
    required this.apiKey,
    required this.deviceUser,
    required this.firmware,
    required this.coordinates,
  });

  final String deviceId;
  final String group;
  final String apiKey;
  final String deviceUser;
  final String firmware;
  final Coordinates coordinates;

  factory UpperData.fromJson(Map<String, dynamic> json) => UpperData(
    deviceId: json["device_ID"],
    group: json["group"],
    apiKey: json["api_key"],
    deviceUser: json["device_user"],
    firmware: json["firmware"],
    coordinates: Coordinates.fromJson(json["coordinates"]),
  );

  Map<String, dynamic> toJson() => {
    "device_ID": deviceId,
    "group": group,
    "api_key": apiKey,
    "device_user": deviceUser,
    "firmware": firmware,
    "coordinates": coordinates.toJson(),
  };
}

class Coordinates {
  Coordinates({
    required this.longitude,
    required this.latitude,
  });

  final Itude longitude;
  final Itude latitude;

  factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
    longitude: Itude.fromJson(json["longitude"]),
    latitude: Itude.fromJson(json["latitude"]),
  );

  Map<String, dynamic> toJson() => {
    "longitude": longitude.toJson(),
    "latitude": latitude.toJson(),
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

class UserDevice {
  UserDevice({
    required this.id,
    required this.orgId,
    required this.deviceId,
    required this.placeId,
    required this.name,
    required this.longitude,
    required this.latitude,
    required this.entryTime,
    required this.updatedAt,
    required this.v,
  });

  final String id;
  final String orgId;
  final DeviceId deviceId;
  final String placeId;
  final String name;
  final Itude longitude;
  final Itude latitude;
  final DateTime entryTime;
  final DateTime updatedAt;
  final int v;

  factory UserDevice.fromJson(Map<String, dynamic> json) => UserDevice(
    id: json["_id"],
    orgId: json["org_id"],
    deviceId: DeviceId.fromJson(json["device_id"]),
    placeId: json["place_id"],
    name: json["name"],
    longitude: Itude.fromJson(json["longitude"]),
    latitude: Itude.fromJson(json["latitude"]),
    entryTime: DateTime.parse(json["entry_time"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "org_id": orgId,
    "device_id": deviceId.toJson(),
    "place_id": placeId,
    "name": name,
    "longitude": longitude.toJson(),
    "latitude": latitude.toJson(),
    "entry_time": entryTime.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "__v": v,
  };
}

class DeviceId {
  DeviceId({
    required this.id,
    required this.profileId,
    required this.comKey,
    required this.activatedOn,
    required this.launchDate,
    required this.status,
    required this.deviceSerial,
  });

  final String id;
  final ProfileId profileId;
  final String comKey;
  final DateTime activatedOn;
  final DateTime launchDate;
  final int status;
  final String deviceSerial;

  factory DeviceId.fromJson(Map<String, dynamic> json) => DeviceId(
    id: json["_id"],
    profileId: ProfileId.fromJson(json["profile_id"]),
    comKey: json["com_key"],
    activatedOn: DateTime.parse(json["activated_on"]),
    launchDate: DateTime.parse(json["launch_date"]),
    status: json["status"],
    deviceSerial: json["device_serial"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "profile_id": profileId.toJson(),
    "com_key": comKey,
    "activated_on": activatedOn.toIso8601String(),
    "launch_date": launchDate.toIso8601String(),
    "status": status,
    "device_serial": deviceSerial,
  };
}
