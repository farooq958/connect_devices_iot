import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class AddNewGroupScreen extends StatelessWidget {
  const AddNewGroupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        'Add new Group',
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

          //device ID text field
          Container(
            height: 38.sp,
            width: 38.sp,
            margin: EdgeInsets.symmetric(horizontal: 30.sp),
            color: Colors.transparent,
            child: TextField(
              controller: AppControllers.addNewDeviceDeviceIdController,
              style: GoogleFonts.poppins(
                fontSize: 12.0.sp,
                fontWeight: FontWeight.normal,
                color: AppColors.themeColorOne,
              ),
              cursorColor: AppColors.themeColorOne,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                  top: 5.sp,
                  left: 10.sp,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.themeColorOne, width: 1.sp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: AppColors.lightTheme, width: 1.1.sp),
                ),
                hintText: 'Device ID',
                hintStyle: GoogleFonts.poppins(
                  fontSize: 12.0.sp,
                  fontStyle: FontStyle.normal,
                  color: AppColors.greyOne,
                ),
              ),
            ),
          ),
          SizedBox(height: 11.sp),
          //submit button
          InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onTap: () {
              debugPrint('submit button is pressed');
            },
            child: Container(
              height: 26.sp,
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 126.sp),
              decoration: BoxDecoration(
                color: AppColors.themeColorOne,
                borderRadius: BorderRadius.circular(10.sp),
              ),
              child: Text(
                'Submit',
                style: GoogleFonts.poppins(
                  color: AppColors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 11.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
