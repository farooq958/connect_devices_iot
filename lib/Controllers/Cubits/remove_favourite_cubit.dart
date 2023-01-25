import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/repo.dart';

part 'remove_favourite_state.dart';

class RemoveFavouriteCubit extends Cubit<RemoveFavouriteState> {
  RemoveFavouriteCubit() : super(RemoveFavouriteInitial());

  removeFavouriteDeviceFunc(id)
  async {

    var temp= await Repository().removeFavouriteDevice(id: id);
    if(temp==200) {

      emit(RemoveDeviceFavouriteSuccess());
    }
    else if(temp==10)
    {
      emit(RemoveDeviceFavouriteInternetError());

    }
    else
    {
      emit(RemoveDeviceFavouriteUnknownError());

    }
  }
}
