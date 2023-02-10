part of 'device_details_cubit.dart';

@immutable
abstract class DeviceDetailsState {}

class DeviceDetailsInitial extends DeviceDetailsState {}
class DeviceDetailsLoaded extends DeviceDetailsState {}
class DeviceDetailsInternetError extends DeviceDetailsState {}
class DeviceDetailsUnknownError extends DeviceDetailsState {}