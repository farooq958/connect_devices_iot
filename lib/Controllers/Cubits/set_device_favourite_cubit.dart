import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Repository/repo.dart';

part 'set_device_favourite_state.dart';

class SetDeviceFavouriteCubit extends Cubit<SetDeviceFavouriteState> {
  SetDeviceFavouriteCubit() : super(SetDeviceFavouriteInitial());
  setDeviceFavouriteAdd(id)
  async {

    var temp= await Repository().setFavouriteDevice(id: id);
    if(temp==200) {

      emit(SetDeviceFavouriteSuccess());
    }
    else if(temp==10)
    {
      emit(SetDeviceFavouriteInternetError());

    }
    else
    {
      emit(SetDeviceFavouriteUnknownError());

    }
  }
}
