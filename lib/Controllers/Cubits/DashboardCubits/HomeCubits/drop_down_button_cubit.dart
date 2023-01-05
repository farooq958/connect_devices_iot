import 'package:bloc/bloc.dart';

class DropDownButtonCubit extends Cubit<String> {
  DropDownButtonCubit(String initialState) : super('My Favorites');

  void category(String category) {
    emit(category);
  }
}
