import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/drop_down_up_down_numbers_cubit.dart';



class DropDownUpDownCubit extends Cubit<String> {
  DropDownUpDownCubit() : super("hr");

  categoryHrMin(String isHrMin,BuildContext context )
  {
   context.read<DropDownUpDownNumbersCubit>().categoryNumbers(1, context, isHrMin);

    emit(isHrMin);

  }

}
