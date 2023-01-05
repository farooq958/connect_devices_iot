import 'package:bloc/bloc.dart';

class PlacesDeviceListPageViewCubit extends Cubit<int?> {
  PlacesDeviceListPageViewCubit({required int? pageIndex}) : super(pageIndex);

  topButtonsPageIndex({required int? currentIndex}) => emit(currentIndex);
}
