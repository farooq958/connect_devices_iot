part of 'set_device_favourite_cubit.dart';

@immutable
abstract class SetDeviceFavouriteState {}

class SetDeviceFavouriteInitial extends SetDeviceFavouriteState {}
class SetDeviceFavouriteSuccess extends SetDeviceFavouriteState {}
class SetDeviceFavouriteInternetError extends SetDeviceFavouriteState {}
class SetDeviceFavouriteUnknownError extends SetDeviceFavouriteState {}
