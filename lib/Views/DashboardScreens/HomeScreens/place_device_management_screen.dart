import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlaceDeviceManagementScreen extends StatelessWidget {
  const PlaceDeviceManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
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
                            .jumpToPage(6);
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
                        'Device management',
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

          //edit device list button
          Container(
            height: 26.sp,
            width: 1.sw,
            margin: EdgeInsets.only(
              left: 246.sp,
              right: 20.sp,
            ),
            decoration: BoxDecoration(
                color: AppColors.greyFour,
                borderRadius: BorderRadius.circular(10.sp),
                border: Border.all(
                  color: AppColors.greyEleventh,
                  width: 1.sp,
                )),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 25.sp,
                    alignment: Alignment.center,
                    child: FittedBox(
                      child: Text(
                        'Edit device list',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 13.sp,
                          color: AppColors.greyThirteen,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 25.sp,
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.edit_note,
                      size: 25.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 27.sp),

          //second row
          Container(
            height: 30.sp,
            width: 1.sw,
            margin: EdgeInsets.symmetric(horizontal: 27.sp),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.creamyTwo,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: FittedBox(
                      child: Text(
                        '3',
                        style: GoogleFonts.poppins(
                          color: AppColors.greyTwo,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20.sp),
                    child: FittedBox(
                      child: Text(
                        'Devices  Lists are Running',
                        style: GoogleFonts.poppins(
                          color: AppColors.greyTwo,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.sp),

          //third row
          Container(
            height: 30.sp,
            width: 1.sw,
            margin: EdgeInsets.symmetric(horizontal: 27.sp),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.bottomNavBackground,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: FittedBox(
                      child: Text(
                        '3',
                        style: GoogleFonts.poppins(
                          color: AppColors.greyTwo,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 20.sp),
                    child: FittedBox(
                      child: Text(
                        'Devices  Lists are Disabled',
                        style: GoogleFonts.poppins(
                          color: AppColors.greyTwo,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
