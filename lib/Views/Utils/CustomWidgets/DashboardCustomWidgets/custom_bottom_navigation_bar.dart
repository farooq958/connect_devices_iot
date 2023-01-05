import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/bottom_navigation_cubit.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int? bottomNavigationBarState;

  const CustomBottomNavigationBar({
    super.key,
    required this.bottomNavigationBarState,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72.sp,
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 10.sp),
      decoration: const BoxDecoration(
        color: AppColors.bottomNavBackground,
        // borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(40.sp),
        //   topLeft: Radius.circular(40.sp),
        // ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                AppControllers.bottomNavigationBarController.jumpToPage(0);
                context
                    .read<BottomNavigationCubit>()
                    .bottomNavigationPageIndex(currentIndex: 0);
              },
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.home,
                  size: 31.sp,
                  color: bottomNavigationBarState == 0 ||
                          bottomNavigationBarState == 4 ||
                          bottomNavigationBarState == 5 ||
                          bottomNavigationBarState == 6 ||
                          bottomNavigationBarState == 7 ||
                          bottomNavigationBarState == 8 ||
                          bottomNavigationBarState == 9 ||
                          bottomNavigationBarState == 10 ||
                          bottomNavigationBarState == 11 ||
                          bottomNavigationBarState == 12
                      ? AppColors.themeColorOne
                      : AppColors.themeColorThree,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                AppControllers.bottomNavigationBarController.jumpToPage(1);
                context
                    .read<BottomNavigationCubit>()
                    .bottomNavigationPageIndex(currentIndex: 1);
              },
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.pin_drop,
                  size: 31.sp,
                  color: bottomNavigationBarState == 1
                      ? AppColors.themeColorOne
                      : AppColors.themeColorThree,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                AppControllers.bottomNavigationBarController.jumpToPage(2);
                context
                    .read<BottomNavigationCubit>()
                    .bottomNavigationPageIndex(currentIndex: 2);
              },
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.settings,
                  size: 31.sp,
                  color: bottomNavigationBarState == 2
                      ? AppColors.themeColorOne
                      : AppColors.themeColorThree,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                AppControllers.bottomNavigationBarController.jumpToPage(3);
                context
                    .read<BottomNavigationCubit>()
                    .bottomNavigationPageIndex(currentIndex: 3);
              },
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.camera,
                  size: 31.sp,
                  color: bottomNavigationBarState == 3
                      ? AppColors.themeColorOne
                      : AppColors.themeColorThree,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
