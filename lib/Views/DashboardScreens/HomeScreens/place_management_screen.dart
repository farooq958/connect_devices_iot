import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlaceManagementScreen extends StatelessWidget {
  const PlaceManagementScreen({Key? key}) : super(key: key);

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
                        'Place management',
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

          //edit device button
          Container(
            height: 26.sp,
            width: 1.sw,
            margin: EdgeInsets.only(
              left: 268.sp,
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
                    child: Text(
                      'Edit device',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: AppColors.greyThirteen,
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

          //place name
          Container(
            height: 24.sp,
            width: 1.sw,
            padding: EdgeInsets.only(
              left: 45.sp,
              right: 100.sp,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Place Name',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Veevo Tech',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: AppColors.greyTwo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.sp),

          //location
          Container(
            height: 24.sp,
            width: 1.sw,
            padding: EdgeInsets.only(
              left: 45.sp,
              right: 100.sp,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Location',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Logitude, Latitude',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: AppColors.greyTwo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.sp),

          //place type
          Container(
            height: 24.sp,
            width: 1.sw,
            padding: EdgeInsets.only(
              left: 45.sp,
              right: 100.sp,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Place type',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Kitchen',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: AppColors.greyTwo,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.sp),

          //place type
          Container(
            height: 68.sp,
            width: 1.sw,
            padding: EdgeInsets.only(
              left: 45.sp,
              right: 100.sp,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Logo',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(right: 65.sp),
                    child: Container(
                      height: 68.sp,
                      width: 72.sp,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.themeColorThree,
                          width: 1.sp,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                            child: Icon(
                              Icons.cloud_outlined,
                              color: AppColors.themeColorOne,
                              size: 40.sp,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 20.sp,
                              width: 20.sp,
                              decoration: const BoxDecoration(
                                color: AppColors.themeColorOne,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.camera_alt,
                                color: AppColors.white,
                                size: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 44.sp),

          //submit button
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              debugPrint('submit button is pressed');
            },
            child: Container(
              height: 26.sp,
              width: 1.sw,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 140.sp),
              decoration: BoxDecoration(
                color: AppColors.themeColorOne,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Text(
                'Submit',
                style: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
