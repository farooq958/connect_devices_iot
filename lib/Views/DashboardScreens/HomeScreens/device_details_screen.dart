import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class DeviceDetailsScreen extends StatelessWidget {
  const DeviceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.sp,
      width: 1.sw,
      color: AppColors.white,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 40.sp),
        physics: const BouncingScrollPhysics(),
        children: [
          //device ID
          Container(
            height: 21.sp,
            width: 1.sw,
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Device ID',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '10',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //group
          Container(
            height: 21.sp,
            width: 1.sw,
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Group',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Group 1',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //API Key
          Container(
            height: 21.sp,
            width: 1.sw,
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'API Key',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'AC1',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //Device User
          Container(
            height: 21.sp,
            width: 1.sw,
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Device User',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'User 1',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //Firmware
          Container(
            height: 21.sp,
            width: 1.sw,
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Firmware',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'AWS-1002',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //Co-ordinates
          Container(
            height: 21.sp,
            width: 1.sw,
            color: AppColors.white,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Co-ordinates',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Longitude, Latitude',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      color: AppColors.greyTwo,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),
        ],
      ),
    );
  }
}
