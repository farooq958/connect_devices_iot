import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class GroupDetailsScreen extends StatelessWidget {
  const GroupDetailsScreen({Key? key}) : super(key: key);

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
                        'Group name',
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

          //place management button
          Container(
            height: 47.sp,
            width: 1.sw,
            padding: EdgeInsets.symmetric(
              horizontal: 8.sp,
            ),
            margin: EdgeInsets.symmetric(horizontal: 18.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(5.sp),
              border: Border.all(
                color: AppColors.lightTheme,
                width: 1.sp,
              ),
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.greySeven,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Icon(
                      Icons.map,
                      size: 20.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //place name
                Expanded(
                  flex: 20,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 13.sp),
                    child: Text(
                      'Place management',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                    color: AppColors.greyFourteen,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.sp),

          //device management button
          Container(
            height: 47.sp,
            width: 1.sw,
            padding: EdgeInsets.symmetric(
              horizontal: 8.sp,
            ),
            margin: EdgeInsets.symmetric(horizontal: 18.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(5.sp),
              border: Border.all(
                color: AppColors.lightTheme,
                width: 1.sp,
              ),
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.greySeven,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Icon(
                      Icons.developer_board,
                      size: 20.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //place name
                Expanded(
                  flex: 20,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 13.sp),
                    child: Text(
                      'Device management',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                    color: AppColors.greyFourteen,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.sp),

          //device list button
          Container(
            height: 47.sp,
            width: 1.sw,
            padding: EdgeInsets.symmetric(
              horizontal: 8.sp,
            ),
            margin: EdgeInsets.symmetric(horizontal: 18.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(5.sp),
              border: Border.all(
                color: AppColors.lightTheme,
                width: 1.sp,
              ),
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.sp,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.greySeven,
                      borderRadius: BorderRadius.circular(8.sp),
                    ),
                    child: Icon(
                      Icons.menu_outlined,
                      size: 20.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //place name
                Expanded(
                  flex: 20,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 13.sp),
                    child: Text(
                      'Device list',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 12.sp,
                    color: AppColors.greyFourteen,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.sp),
        ],
      ),
    );
  }
}
