import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlaceDeviceGroupManagement extends StatelessWidget {
  const PlaceDeviceGroupManagement({Key? key}) : super(key: key);

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
                        'Device group management',
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
          SizedBox(height: 30.sp),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 31.sp),
            child: Text(
              'Group 01',
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                color: AppColors.greyTwo,
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 15.sp),

          //first row
          Container(
            height: 25.sp,
            width: 1.sw,
            padding: EdgeInsets.symmetric(horizontal: 31.sp),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.lightbulb,
                      color: AppColors.themeColorOne,
                      size: 25.sp,
                    ),
                  ),
                ),

                //title
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Light',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),

                //switch button
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(right: 65.sp),
                    child: Stack(
                      children: [
                        //switch button container
                        Positioned(
                          top: 2.sp,
                          bottom: 2.sp,
                          left: 0,
                          right: 2.sp,
                          child: Container(
                            height: 25.sp,
                            padding: EdgeInsets.symmetric(horizontal: 7.sp),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: AppColors.creamy,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'On',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.greyNinth,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Off',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.greyNinth,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //switch top white small container
                        Positioned(
                          top: 3.sp,
                          bottom: 3.sp,
                          //left: 3.sp,      ///toggle the on off status here by aligning left right positions
                          right: 3.sp,
                          child: Container(
                            height: 25.sp,
                            width: 35.sp,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.sp),

          //second row
          Container(
            height: 25.sp,
            width: 1.sw,
            padding: EdgeInsets.symmetric(horizontal: 31.sp),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.waves,
                      color: AppColors.themeColorOne,
                      size: 25.sp,
                    ),
                  ),
                ),

                //title
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Air conditioner',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),

                //switch button
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(right: 65.sp),
                    child: Stack(
                      children: [
                        //switch button container
                        Positioned(
                          top: 2.sp,
                          bottom: 2.sp,
                          left: 0,
                          right: 2.sp,
                          child: Container(
                            height: 25.sp,
                            padding: EdgeInsets.symmetric(horizontal: 7.sp),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: AppColors.creamy,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'On',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.greyNinth,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Off',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.greyNinth,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //switch top white small container
                        Positioned(
                          top: 3.sp,
                          bottom: 3.sp,
                          //left: 3.sp,      ///toggle the on off status here by aligning left right positions
                          right: 3.sp,
                          child: Container(
                            height: 25.sp,
                            width: 35.sp,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.sp),

          //third row
          Container(
            height: 25.sp,
            width: 1.sw,
            padding: EdgeInsets.symmetric(horizontal: 31.sp),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.flip_camera_android_outlined,
                      color: AppColors.themeColorOne,
                      size: 25.sp,
                    ),
                  ),
                ),

                //title
                Expanded(
                  flex: 5,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Fan',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),

                //switch button
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(right: 65.sp),
                    child: Stack(
                      children: [
                        //switch button container
                        Positioned(
                          top: 2.sp,
                          bottom: 2.sp,
                          left: 0,
                          right: 2.sp,
                          child: Container(
                            height: 25.sp,
                            padding: EdgeInsets.symmetric(horizontal: 7.sp),
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: AppColors.creamy,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'On',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.greyNinth,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      'Off',
                                      style: GoogleFonts.roboto(
                                        color: AppColors.greyNinth,
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //switch top white small container
                        Positioned(
                          top: 3.sp,
                          bottom: 3.sp,
                          //left: 3.sp,      ///toggle the on off status here by aligning left right positions
                          right: 3.sp,
                          child: Container(
                            height: 25.sp,
                            width: 35.sp,
                            alignment: Alignment.topCenter,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                          ),
                        ),
                      ],
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
