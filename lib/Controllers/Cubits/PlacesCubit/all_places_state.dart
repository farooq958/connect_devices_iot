part of 'all_places_cubit.dart';

@immutable
abstract class AllPlacesState {}

class AllPlacesInitial extends AllPlacesState {}
class AllPlacesLoaded extends AllPlacesState {}
class AllPlacesInternetError extends AllPlacesState {}
class AllPlacesUnknownError extends AllPlacesState {}