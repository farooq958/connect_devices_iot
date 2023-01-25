import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/devices_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/FavouriteDeviceCubit/all_favourite_devices_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/PlacesCubit/all_places_cubit.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';

class DropDownButtonCubit extends Cubit<String> {
  DropDownButtonCubit(String initialState) : super('MyFavorites');

  void category(String category,BuildContext context) {
    if(category=="MyFavorites")
      {
   clearit();
        context.read<AllFavouriteDevicesCubit>().loadFavouriteDevices("");

      }
    else if(category=="Places")
      {
        clearit();
       // context.read<AllFavouriteDevicesCubit>().loadFavouriteDevices();
        context.read<AllPlacesCubit>().loadAllPlaces("");
      }
    else if(category=="Devices")
      {
        clearit();
        context.read<AllDevicesCubit>().loadUserDevices("");


      }
    else
      {}
    emit(category);
  }

  void clearit() {
    AppControllers.homeTabMyFavoritesSearchController.clear();
    AppControllers.homeTabDeviceGroupsSearchController.clear();
    AppControllers.homeTabDevicesSearchController.clear();
    AppControllers.homeTabPlacesSearchController.clear();
  }
}
