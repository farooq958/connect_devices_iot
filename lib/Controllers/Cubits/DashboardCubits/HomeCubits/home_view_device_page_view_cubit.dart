import 'package:bloc/bloc.dart';

class HomeViewDevicePageViewCubit extends Cubit<int?> {
  HomeViewDevicePageViewCubit({required int? pageIndex}) : super(pageIndex);

  topButtonsPageIndex({required int? currentIndex}) => emit(currentIndex);
}
