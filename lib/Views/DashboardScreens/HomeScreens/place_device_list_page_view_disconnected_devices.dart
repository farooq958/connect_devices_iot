import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class PlacesDeviceListPageViewDisconnectedDevices extends StatelessWidget {
  const PlacesDeviceListPageViewDisconnectedDevices({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.sp,
      width: 1.sw,
      color: AppColors.white,
      padding: EdgeInsets.symmetric(horizontal: 35.sp),
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          //first device
          Row(
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
                child: Container(
                  height: 71.sp,
                  color: AppColors.white,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 5.sp,
                    top: 5.sp,
                  ),
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
                        alignment: Alignment.topLeft,
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
                                  text: "Not Active",

                                  /// Active
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    // color: AppColors.creamyThree,
                                    color: AppColors.redTwo,
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

              //connection status button
              Expanded(
                flex: 3,
                child: Container(
                  height: 90.sp,
                  color: AppColors.white,
                  padding: EdgeInsets.only(top: 10.sp),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: AppColors.greenThree,
                          size: 25.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text(
                              'Press to Connect',
                              style: GoogleFonts.roboto(
                                color: AppColors.greyNinth,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //Divider
          const Divider(color: AppColors.greyThree),

          //second device
          Row(
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
                child: Container(
                  height: 71.sp,
                  color: AppColors.white,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 5.sp,
                    top: 5.sp,
                  ),
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
                        alignment: Alignment.topLeft,
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
                                  text: "Not Active",

                                  /// Active
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    // color: AppColors.creamyThree,
                                    color: AppColors.redTwo,
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

              //connection status button
              Expanded(
                flex: 3,
                child: Container(
                  height: 90.sp,
                  color: AppColors.white,
                  padding: EdgeInsets.only(top: 10.sp),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: AppColors.greenThree,
                          size: 25.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text(
                              'Press to Connect',
                              style: GoogleFonts.roboto(
                                color: AppColors.greyNinth,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //Divider
          const Divider(color: AppColors.greyThree),

          //third device
          Row(
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
                child: Container(
                  height: 71.sp,
                  color: AppColors.white,
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(
                    left: 5.sp,
                    top: 5.sp,
                  ),
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
                        alignment: Alignment.topLeft,
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
                                  text: "Not Active",

                                  /// Active
                                  style: GoogleFonts.poppins(
                                    fontSize: 10.sp,
                                    // color: AppColors.creamyThree,
                                    color: AppColors.redTwo,
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

              //connection status button
              Expanded(
                flex: 3,
                child: Container(
                  height: 90.sp,
                  color: AppColors.white,
                  padding: EdgeInsets.only(top: 10.sp),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.circle,
                          color: AppColors.greenThree,
                          size: 25.sp,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: FittedBox(
                            child: Text(
                              'Press to Connect',
                              style: GoogleFonts.roboto(
                                color: AppColors.greyNinth,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //Divider
          const Divider(color: AppColors.greyThree),
        ],
      ),
    );
  }
}
