part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class RegisterSuccess extends RegisterState {}
class RegisterInternetError extends RegisterState {}
class RegisterUnknownError extends RegisterState {}