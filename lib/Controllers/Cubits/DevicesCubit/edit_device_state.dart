part of 'edit_device_cubit.dart';

@immutable
abstract class EditDeviceState {}

class EditDeviceInitial extends EditDeviceState {}
class EditDeviceSuccess extends EditDeviceState {}
class EditDeviceInternetError extends EditDeviceState {}
class EditDeviceUnknownError extends EditDeviceState {}