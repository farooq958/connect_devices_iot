part of 'devices_cubit.dart';

@immutable
abstract class AllDevicesState {}

class AllDevicesInitial extends AllDevicesState {}

class AllDevicesLoaded extends AllDevicesState {}
class AllDevicesInternetError extends AllDevicesState {}
class AllDevicesUnknownError extends AllDevicesState {}