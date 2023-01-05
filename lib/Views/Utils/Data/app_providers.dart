import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/drop_down_button_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/home_view_device_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/places_device_list_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/bottom_navigation_cubit.dart';

final List<BlocProvider> mainCubitProvidersList = [
  //Authentication Providers

  //Dashboard providers
  BlocProvider<BottomNavigationCubit>(
    create: (context) => BottomNavigationCubit(pageIndex: 0),
  ),
  BlocProvider<DropDownButtonCubit>(
    create: (context) => DropDownButtonCubit('My Favorites'),
  ),
  BlocProvider<HomeViewDevicePageViewCubit>(
    create: (context) => HomeViewDevicePageViewCubit(pageIndex: 0),
  ),
  BlocProvider<PlacesDeviceListPageViewCubit>(
    create: (context) => PlacesDeviceListPageViewCubit(pageIndex: 0),
  ),
];
