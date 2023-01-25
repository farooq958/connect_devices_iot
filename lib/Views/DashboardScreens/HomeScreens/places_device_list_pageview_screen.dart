import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/places_device_list_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_device_list_page_view_connected_devices.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/place_device_list_page_view_disconnected_devices.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlacesDeviceListPageViewScreen extends StatelessWidget {
  const PlacesDeviceListPageViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlacesDeviceListPageViewCubit, int?>(
      builder: (context, viewDeviceListTopButtonState) {
        return Container(
          height: 1.sh,
          width: 1.sw,
          color: AppColors.white,
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              //custom app bar
              Container(
                height: 52.sp,
                width: 1.sw,
                color: AppColors.greySeven,
                padding: EdgeInsets.symmetric(horizontal: 30.sp),
                child: Row(
                  children: [
                    //back arrow button
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 52.sp,
                        color: AppColors.greySeven,
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            AppControllers.bottomNavigationBarController
                                .jumpToPage(10);
                            AppControllers.placesDeviceListPageViewController
                                .jumpToPage(0);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 14.sp,
                            color: AppColors.greyTwo,
                          ),
                        ),
                      ),
                    ),

                    //title
                    Expanded(
                      flex: 30,
                      child: Container(
                        height: 52.sp,
                        color: AppColors.greySeven,
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Text(
                            'Devices list',
                            style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                              color: AppColors.greyTwo,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25.71.sp),

              //top bar buttons row
              Container(
                height: 26.sp,
                width: 1.sw,
                color: AppColors.white,
                padding: EdgeInsets.only(
                  left: 24.sp,
                  right: 90.sp,
                ),
                child: Row(
                  children: [
                    //device details button
                    Expanded(
                      flex: 8,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          AppControllers.placesDeviceListPageViewController
                              .jumpToPage(0);
                          context
                              .read<PlacesDeviceListPageViewCubit>()
                              .topButtonsPageIndex(currentIndex: 0);
                        },
                        child: Container(
                          height: 26.sp,
                          decoration: BoxDecoration(
                            color: viewDeviceListTopButtonState == 0
                                ? AppColors.themeColorOne
                                : AppColors.greyEleventh,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              'Disonnected devices',
                              style: GoogleFonts.poppins(
                                color: viewDeviceListTopButtonState == 0
                                    ? AppColors.white
                                    : AppColors.greyTwelve,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const Spacer(flex: 1),

                    //device management button
                    Expanded(
                      flex: 8,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          AppControllers.placesDeviceListPageViewController
                              .jumpToPage(1);
                          context
                              .read<PlacesDeviceListPageViewCubit>()
                              .topButtonsPageIndex(currentIndex: 1);
                        },
                        child: Container(
                          height: 26.sp,
                          decoration: BoxDecoration(
                            color: viewDeviceListTopButtonState == 1
                                ? AppColors.themeColorOne
                                : AppColors.greyEleventh,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              'Connected devices',
                              style: GoogleFonts.poppins(
                                color: viewDeviceListTopButtonState == 1
                                    ? AppColors.white
                                    : AppColors.greyTwelve,
                                fontSize: 11.sp,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40.sp),

              //page view
              Container(
                height: 600.sp,
                width: 1.sw,
                color: AppColors.white,
                child: PageView(
                  controller: AppControllers.placesDeviceListPageViewController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (x) {
                    context
                        .read<PlacesDeviceListPageViewCubit>()
                        .topButtonsPageIndex(currentIndex: x);
                  },
                  children: const [
                    //disconnected devices
                    PlacesDeviceListPageViewDisconnectedDevices(),

                    //connected devices
                    PlaceDeviceListPageViewConnectedDevices(),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
