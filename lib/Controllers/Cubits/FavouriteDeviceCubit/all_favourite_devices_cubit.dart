import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:veevo_connect/Controllers/Cubits/FavouriteDeviceCubit/allfavouritedevicescontroller.dart';
import 'package:veevo_connect/Controllers/Model/FavouriteDevices/get_all_favourite_devices.dart';
import 'package:veevo_connect/Controllers/Repository/repo.dart';

part 'all_favourite_devices_state.dart';

class AllFavouriteDevicesCubit extends Cubit<AllFavouriteDevicesState> {
  AllFavouriteDevicesCubit() : super(AllFavouriteDevicesInitial());

loadFavouriteDevices(searchQuery)
async {
//emit(AllFavouriteDevicesInitial());
  var temp= await Repository().getAllFavouriteDevices(searchQuery);

  if(temp==200) {

    emit(AllFavouriteDevicesLoaded());
  }

  else if(temp==10)
    {
      emit(AllFavouriteDevicesInternetError());

    }
  else
    {
      emit(AllFavouriteDevicesUnknownError());

    }
}

}


