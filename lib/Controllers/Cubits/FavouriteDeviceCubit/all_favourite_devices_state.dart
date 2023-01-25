part of 'all_favourite_devices_cubit.dart';

@immutable
abstract class AllFavouriteDevicesState {}

class AllFavouriteDevicesInitial extends AllFavouriteDevicesState {}
class AllFavouriteDevicesLoaded extends AllFavouriteDevicesState {}
class AllFavouriteDevicesInternetError extends AllFavouriteDevicesState {}
class AllFavouriteDevicesUnknownError extends AllFavouriteDevicesState {}