import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/home_view_device_page_view_cubit.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/device_details_screen.dart';
import 'package:veevo_connect/Views/DashboardScreens/HomeScreens/device_management_screen.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class ViewDevicePageViewScreen extends StatelessWidget {
  const ViewDevicePageViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewDevicePageViewCubit, int?>(
      builder: (context, viewDeviceTopButtonState) {
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
                            'Device Name',
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
                      flex: 6,
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          AppControllers.homeViewDeviceController.jumpToPage(0);
                          context
                              .read<HomeViewDevicePageViewCubit>()
                              .topButtonsPageIndex(currentIndex: 0);
                        },
                        child: Container(
                          height: 26.sp,
                          decoration: BoxDecoration(
                            color: viewDeviceTopButtonState == 0
                                ? AppColors.themeColorOne
                                : AppColors.greyEleventh,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              'Device details',
                              style: GoogleFonts.poppins(
                                color: viewDeviceTopButtonState == 0
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
                          AppControllers.homeViewDeviceController.jumpToPage(1);
                          context
                              .read<HomeViewDevicePageViewCubit>()
                              .topButtonsPageIndex(currentIndex: 1);
                        },
                        child: Container(
                          height: 26.sp,
                          decoration: BoxDecoration(
                            color: viewDeviceTopButtonState == 1
                                ? AppColors.themeColorOne
                                : AppColors.greyEleventh,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          alignment: Alignment.center,
                          child: FittedBox(
                            child: Text(
                              'Device management',
                              style: GoogleFonts.poppins(
                                color: viewDeviceTopButtonState == 1
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
                  controller: AppControllers.homeViewDeviceController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (x) {
                    context
                        .read<HomeViewDevicePageViewCubit>()
                        .topButtonsPageIndex(currentIndex: x);
                  },
                  children: const [
                    //device details content
                    DeviceDetailsScreen(),

                    //device management content
                    DeviceManagementScreen(),
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
