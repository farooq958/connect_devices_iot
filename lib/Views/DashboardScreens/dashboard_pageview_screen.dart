import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/home_view_device_page_view_cubit.dart';
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
      return BlocBuilder<HomeViewDevicePageViewCubit,int?>(

        builder: (context, viewDeviceTopButtonState) {
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
                children:  [
                  const HomeScreen(), //0
                  const MapScreen(), //1
                  const SettingScreen(), //2
                  const LastScreen(), //3
                  ViewDevicePageViewScreen(viewDeviceTopButtons: viewDeviceTopButtonState,), //4
                  const AddDeviceScreen(), //5
                  const PlaceDetailScreen(), //6
                  const GroupDetailsScreen(), //7
                  const PlaceManagementScreen(), //8
                  const PlaceDeviceManagementScreen(), //9
                  const PlaceDeviceListScreen(), //10
                  const PlaceDeviceGroupManagement(), //11
                  const PlacesDeviceListPageViewScreen(), //12
                  const AddNewPlaceScreen(), //13
                  const AddNewGroupScreen(), //14
                ],
              ),
            ),
          );
        }
      );
    });
  }
}
