import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';


class DropDownUpDownNumbersCubit extends Cubit<int> {
  DropDownUpDownNumbersCubit() : super(1);

  categoryNumbers(int number,BuildContext context,String isHrMin)
  {

    emit(number);
  }

}
