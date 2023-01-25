part of 'remove_favourite_cubit.dart';

@immutable
abstract class RemoveFavouriteState {}

class RemoveFavouriteInitial extends RemoveFavouriteState {}
class RemoveDeviceFavouriteSuccess extends RemoveFavouriteState {}
class RemoveDeviceFavouriteInternetError extends RemoveFavouriteState {}
class RemoveDeviceFavouriteUnknownError extends RemoveFavouriteState {}
