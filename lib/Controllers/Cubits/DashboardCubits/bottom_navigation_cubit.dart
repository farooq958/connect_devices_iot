import 'package:bloc/bloc.dart';

class BottomNavigationCubit extends Cubit<int?> {
  BottomNavigationCubit({required int? pageIndex}) : super(pageIndex);

  bottomNavigationPageIndex({required int? currentIndex}) => emit(currentIndex);
}
