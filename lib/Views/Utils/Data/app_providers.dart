import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/drop_down_button_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/home_view_device_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/places_device_list_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/bottom_navigation_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/devices_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/edit_device_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/register_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/FavouriteDeviceCubit/all_favourite_devices_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/PlacesCubit/all_places_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/remove_favourite_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/set_device_favourite_cubit.dart';

import '../../../Controllers/Cubits/DevicesCubit/button_enable_disable_cubit.dart';
import '../../../Controllers/Cubits/SwitchCubit/switch_cubit.dart';

final List<BlocProvider> mainCubitProvidersList = [
  //Authentication Providers

  //Dashboard providers
  BlocProvider<BottomNavigationCubit>(
    create: (context) => BottomNavigationCubit(pageIndex: 0),
  ),
  BlocProvider<DropDownButtonCubit>(
    create: (context) => DropDownButtonCubit('MyFavorites'),
  ),
  BlocProvider<HomeViewDevicePageViewCubit>(
    create: (context) => HomeViewDevicePageViewCubit(pageIndex: 0),
  ),
  BlocProvider<PlacesDeviceListPageViewCubit>(
    create: (context) => PlacesDeviceListPageViewCubit(pageIndex: 0),
  ),
  BlocProvider<AllFavouriteDevicesCubit>(create: (context)=> AllFavouriteDevicesCubit()),
   BlocProvider<AllPlacesCubit>(create: (context)=> AllPlacesCubit()),
   BlocProvider<AllDevicesCubit>(create: (context)=> AllDevicesCubit())
  ,
  BlocProvider<RegisterCubit>(create: (context)=> RegisterCubit()),
  BlocProvider<SetDeviceFavouriteCubit>(create: (context)=> SetDeviceFavouriteCubit())
  ,
  BlocProvider<RemoveFavouriteCubit>(create: (context)=> RemoveFavouriteCubit()),
  BlocProvider<EditDeviceCubit>(create: (context)=>EditDeviceCubit()),
  BlocProvider<ButtonEnableDisableCubit>(create: (context) => ButtonEnableDisableCubit())
  ,
  BlocProvider<SwitchCubit>(create: (context)=>SwitchCubit())
];
