import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/bottom_navigation_cubit.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/add_device_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/add_new_group_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/group_details_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/home_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_detail_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_device_group_management.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_device_list_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_device_management_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_management_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/places_device_list_pageview_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/view_device_pageview_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/LastScreen/last_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/MapScreens/map_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/SettingScreens/setting_screen.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/custom_floating_action_button.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

import 'HomeScreens/add_new_place_screen.dart';

class DashboardPageViewScreen extends StatelessWidget {
  const DashboardPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, int?>(
        builder: (context, bottomNavigationBarState) {
      return Scaffold(
        backgroundColor: AppColors.white,
        resizeToAvoidBottomInset: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Builder(
          builder: (context) {
            if (bottomNavigationBarState == 0) {
              return const CustomAddDeviceButton();
            } else {
              return const SizedBox();
            }
          },
        ),
        bottomNavigationBar: CustomBottomNavigationBar(
            bottomNavigationBarState: bottomNavigationBarState),
        body: SafeArea(
          child: PageView(
            controller: AppControllers.bottomNavigationBarController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (x) {
              context
                  .read<BottomNavigationCubit>()
                  .bottomNavigationPageIndex(currentIndex: x);
            },
            children: const [
              HomeScreen(), //0
              MapScreen(), //1
              SettingScreen(), //2
              LastScreen(), //3
              ViewDevicePageViewScreen(), //4
              AddDeviceScreen(), //5
              PlaceDetailScreen(), //6
              GroupDetailsScreen(), //7
              PlaceManagementScreen(), //8
              PlaceDeviceManagementScreen(), //9
              PlaceDeviceListScreen(), //10
              PlaceDeviceGroupManagement(), //11
              PlacesDeviceListPageViewScreen(), //12
              AddNewPlaceScreen(), //13
              AddNewGroupScreen(), //14
            ],
          ),
        ),
      );
    });
  }
}
