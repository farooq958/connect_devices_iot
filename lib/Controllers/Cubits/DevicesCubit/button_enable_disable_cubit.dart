import 'package:bloc/bloc.dart';




class ButtonEnableDisableCubit extends Cubit<bool> {
  ButtonEnableDisableCubit() : super(false);

  buttonVisibility(bool btnVisiblityState)
  {
    emit(btnVisiblityState);


  }
}
