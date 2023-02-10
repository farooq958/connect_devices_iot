import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';


class DimmerShowCubit extends Cubit<bool> {
  DimmerShowCubit() : super(false);
  showHideDimmer(bool visibility)
  {
    emit(visibility);

  }

}
