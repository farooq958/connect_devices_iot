import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/LoginCustomWidgets/logout_custom_button.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';
import 'package:veevo_connect/Views/Utils/Data/app_images.dart';
import 'package:veevo_connect/Views/Utils/Data/app_strings.dart';

class TopDesign extends StatelessWidget {
  const TopDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 171.sp,
      width: 1.sw,
      decoration: BoxDecoration(
        color: const Color(0xffF9F8FF),
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(40.sp),
        ),
        image: const DecorationImage(
          image: AssetImage(
            AppImages.homeTopImage,
          ),
        ),
      ),
      child: Stack(
        children: [
          //bottom content
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                top: 19.sp,
                left: 19.sp,
                right: 19.sp,
              ),
              physics: const NeverScrollableScrollPhysics(),
              children: [
                //hi and user name text
                Container(
                  height: 36.sp,
                  width: 150.sp,
                  alignment: Alignment.centerLeft,
                  color: Colors.transparent,
                  child: FittedBox(
                    child: RichText(
                      text: TextSpan(
                        text: AppStrings.hi,
                        style: GoogleFonts.poppins(
                          fontSize: 24.sp,
                          color: AppColors.themeColorTwo,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "Jhon Doe!",
                            style: GoogleFonts.poppins(
                              fontSize: 24.sp,
                              color: AppColors.themeColorTwo,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 9.sp),

                //total devices text
                Container(
                  height: 27.sp,
                  width: 137.sp,
                  color: Colors.transparent,
                  alignment: Alignment.bottomLeft,
                  child: FittedBox(
                    child: Text(
                      AppStrings.toDev,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                //Details
                Container(
                  height: 75.sp,
                  width: 1.sw,
                  color: Colors.transparent,
                  alignment: Alignment.topLeft,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 95.sp,
                        color: Colors.transparent,
                        alignment: Alignment.topCenter,
                        child: Text(
                          '15',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: AppColors.themeColorTwo,
                            fontSize: 80.sp,
                            height: 0.9.sp,
                          ),
                        ),
                      ),
                      SizedBox(width: 0.5.sp),
                      Container(
                        margin: EdgeInsets.only(
                          top: 3.sp,
                          bottom: 18.sp,
                        ),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: AppColors.greyThree,
                              width: 1.sp,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 95.sp,
                        width: 1.sw,
                        color: Colors.transparent,
                        child: ListView(
                          shrinkWrap: true,
                          padding: EdgeInsets.only(left: 3.sp),
                          physics: const NeverScrollableScrollPhysics(),
                          children: [
                            //online devices
                            Container(
                              height: 30.sp,
                              alignment: Alignment.bottomLeft,
                              margin: EdgeInsets.only(right: 300.sp),
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                border: Border(
                                  bottom: BorderSide(
                                    color: AppColors.greyThree,
                                    width: 1.sp,
                                  ),
                                ),
                              ),
                              child: ListView(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    height: 30.sp,
                                    width: 36.sp,
                                    color: Colors.transparent,
                                    alignment: Alignment.centerLeft,
                                    child: FittedBox(
                                      child: Text(
                                        '04',
                                        style: GoogleFonts.poppins(
                                          fontSize: 27.sp,
                                          color: AppColors.themeColorTwo,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30.sp,
                                    width: 72.sp,
                                    color: Colors.transparent,
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(bottom: 5.sp),
                                    child: FittedBox(
                                      child: Text(
                                        "ONLINE DEVICES",
                                        style: GoogleFonts.poppins(
                                          fontSize: 9.sp,
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //offline devices
                            Container(
                              height: 30.sp,
                              width: 1.sw,
                              alignment: Alignment.topLeft,
                              color: Colors.transparent,
                              child: ListView(
                                shrinkWrap: true,
                                padding: EdgeInsets.zero,
                                physics: const NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Container(
                                    height: 30.sp,
                                    width: 36.sp,
                                    color: Colors.transparent,
                                    alignment: Alignment.centerLeft,
                                    child: FittedBox(
                                      child: Text(
                                        '11',
                                        style: GoogleFonts.poppins(
                                          fontSize: 27.sp,
                                          color: AppColors.themeColorTwo,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 30.sp,
                                    width: 72.sp,
                                    color: Colors.transparent,
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.only(bottom: 5.sp),
                                    child: FittedBox(
                                      child: Text(
                                        "OFFLINE DEVICES",
                                        style: GoogleFonts.poppins(
                                          fontSize: 9.sp,
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          //logout button
          Positioned(
            top: 10.sp,
            right: 20.sp,
            child: const CustomLogoutButton(),
          ),
        ],
      ),
    );
  }
}
