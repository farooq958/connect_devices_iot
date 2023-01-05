import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlaceDeviceListScreen extends StatelessWidget {
  const PlaceDeviceListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
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
                        'Device list',
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

          //default control button
          Container(
            height: 26.sp,
            width: 1.sw,
            margin: EdgeInsets.only(
              left: 200.sp,
              right: 20.sp,
            ),
            decoration: BoxDecoration(
              color: AppColors.creamyTwo,
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 25.sp,
                    alignment: Alignment.center,
                    child: Text(
                      'Default Control',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 13.sp,
                        color: AppColors.greyThirteen,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 25.sp,
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      color: AppColors.creamyTwo,
                      borderRadius: BorderRadius.circular(10.sp),
                    ),
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
          SizedBox(height: 27.sp),

          SizedBox(
            height: 650.sp,
            width: 1.sw,
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.only(
                top: 10.sp,
                bottom: 50.sp,
              ),
              physics: const BouncingScrollPhysics(),
              itemCount: 3,
              separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.sp),
                child: const Divider(
                  color: AppColors.greyThree,
                ),
              ),
              itemBuilder: (context, index) {
                return Container(
                  height: 90.sp,
                  width: 1.sw,
                  color: AppColors.white,
                  padding: EdgeInsets.symmetric(horizontal: 35.sp),
                  child: Row(
                    children: [
                      //leading icon
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 58.sp,
                          margin: EdgeInsets.symmetric(horizontal: 5.sp),
                          decoration: BoxDecoration(
                            color: AppColors.greySeven,
                            borderRadius: BorderRadius.circular(15.sp),
                          ),
                          child: Icon(
                            Icons.developer_board,
                            size: 35.sp,
                            color: AppColors.themeColorOne,
                          ),
                        ),
                      ),

                      //title, status,
                      Expanded(
                        flex: 9,
                        child: InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            AppControllers.bottomNavigationBarController
                                .jumpToPage(12);
                          },
                          child: Container(
                            height: 71.sp,
                            color: AppColors.white,
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 5.sp),
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                Text(
                                  'Device 01',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    color: AppColors.greyTwo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Container(
                                  height: 36.sp,
                                  width: 150.sp,
                                  alignment: Alignment.centerLeft,
                                  color: Colors.transparent,
                                  child: FittedBox(
                                    child: RichText(
                                      text: TextSpan(
                                        text: 'Status  ',
                                        style: GoogleFonts.poppins(
                                          fontSize: 10.sp,
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.normal,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "Active",

                                            /// Not active
                                            style: GoogleFonts.poppins(
                                              fontSize: 10.sp,
                                              color: AppColors.creamyThree,
                                              //not active color AppColors.redTwo
                                              fontWeight: FontWeight.normal,
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
                        ),
                      ),

                      //switch button
                      Expanded(
                        flex: 3,
                        child: Container(
                          height: 90.sp,
                          decoration: BoxDecoration(
                            color: AppColors.creamy,
                            borderRadius: BorderRadius.circular(10.sp),
                          ),
                          child: Stack(
                            children: [
                              //on off texts
                              Positioned(
                                top: 0,
                                left: 0,
                                right: 0,
                                bottom: 0,
                                child: Container(
                                  height: 71.sp,
                                  width: 46.sp,
                                  decoration: BoxDecoration(
                                    color: AppColors
                                        .creamy, // at off AppColors.greyNinth,
                                    borderRadius: BorderRadius.circular(10.sp),
                                  ),
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding:
                                        EdgeInsets.symmetric(vertical: 10.sp),
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Text(
                                        'Off',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                      SizedBox(height: 30.sp),
                                      Text(
                                        'On',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              ////toggle top container
                              Positioned(
                                top: 5.sp, //at on assign this
                                // bottom: 5.sp,    ///at off assign button
                                left: 5.sp,
                                right: 5.sp,
                                child: Container(
                                  height: 33.sp,
                                  width: 46.sp,
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
