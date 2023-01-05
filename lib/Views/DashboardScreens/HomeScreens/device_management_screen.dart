import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class DeviceManagementScreen extends StatelessWidget {
  const DeviceManagementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.sp,
      width: 1.sw,
      color: AppColors.white,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: [
          //sensors text
          Container(
            height: 90.sp,
            width: 1.sw,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(horizontal: 22.sp),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50.sp,
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.greySeven,
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.wifi_tethering_rounded,
                      size: 25.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //sensors text
                Expanded(
                  flex: 10,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 5.sp),
                    child: Text(
                      'Sensors',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyThirteen,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //device details 04 icons with texts
          Container(
            height: 130.sp,
            width: 1.sw,
            color: AppColors.white,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.symmetric(horizontal: 22.sp),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                //first row
                Container(
                  height: 50.sp,
                  width: 1.sw,
                  color: AppColors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30.sp),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.sp,
                          alignment: Alignment.center,
                          // padding: EdgeInsets.only(bottom: 30.sp),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(
                                color: AppColors.yellowOne,
                                width: 1.sp,
                              )),
                          child: Icon(
                            Icons.energy_savings_leaf_rounded,
                            color: AppColors.yellowOne,
                            size: 30.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 50.sp,
                          color: AppColors.white,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10.sp),
                          child: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Text(
                                'Voltage',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyTwo,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                '227',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyNinth,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.sp,
                          alignment: Alignment.center,
                          // padding: EdgeInsets.only(bottom: 30.sp),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(
                                color: AppColors.orangeOne,
                                width: 1.sp,
                              )),
                          child: Icon(
                            Icons.flash_on,
                            color: AppColors.orangeOne,
                            size: 30.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 50.sp,
                          color: AppColors.white,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10.sp),
                          child: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Text(
                                'Current',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyTwo,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                '22',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyNinth,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 10.sp),

                //second row
                Container(
                  height: 50.sp,
                  width: 1.sw,
                  color: AppColors.white,
                  padding: EdgeInsets.symmetric(horizontal: 30.sp),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.sp,
                          alignment: Alignment.center,
                          // padding: EdgeInsets.only(bottom: 30.sp),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(
                                color: AppColors.redTwo,
                                width: 1.sp,
                              )),
                          child: Icon(
                            Icons.device_thermostat,
                            color: AppColors.redTwo,
                            size: 30.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 70.sp,
                          color: AppColors.white,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10.sp),
                          child: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Text(
                                'Temp',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyTwo,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18.sp,
                                ),
                              ),
                              Text(
                                '227',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyNinth,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(flex: 2),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 50.sp,
                          alignment: Alignment.center,
                          // padding: EdgeInsets.only(bottom: 30.sp),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(10.sp),
                              border: Border.all(
                                color: AppColors.blueTwo,
                                width: 1.sp,
                              )),
                          child: Icon(
                            Icons.water_drop,
                            color: AppColors.blueTwo,
                            size: 30.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          height: 70.sp,
                          color: AppColors.white,
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: 10.sp),
                          child: ListView(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              FittedBox(
                                child: Text(
                                  'Humidity',
                                  style: GoogleFonts.poppins(
                                    color: AppColors.greyTwo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                              Text(
                                '227',
                                style: GoogleFonts.poppins(
                                  color: AppColors.greyNinth,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.sp,
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
          ),

          //divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Divider(
              thickness: 1.sp,
              color: AppColors.greyThree,
            ),
          ),

          //controls text
          Container(
            height: 90.sp,
            width: 1.sw,
            color: AppColors.white,
            padding: EdgeInsets.symmetric(horizontal: 22.sp),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 50.sp,
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.greySeven,
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.control_camera,
                      size: 25.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //sensors text
                Expanded(
                  flex: 10,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 5.sp),
                    child: Text(
                      'Controls',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyThirteen,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          //first device objects
          Container(
            height: 90.sp,
            width: 1.sw,
            color: AppColors.white,
            padding: EdgeInsets.only(
              left: 22.sp,
              right: 50.sp,
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 58.sp,
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.developer_board,
                      size: 28.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //title, subTitle, and wifi icon
                Expanded(
                  flex: 9,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Device Object',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
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
                              color: AppColors.creamy,
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(vertical: 10.sp),
                              physics: const NeverScrollableScrollPhysics(),
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
                          top: 5,
                          left: 5,
                          right: 5,
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
          ),
          SizedBox(height: 10.sp),

          //divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Divider(
              thickness: 1.sp,
              color: AppColors.greyThree,
            ),
          ),

          //second device objects
          Container(
            height: 90.sp,
            width: 1.sw,
            color: AppColors.white,
            padding: EdgeInsets.only(
              left: 22.sp,
              right: 50.sp,
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 58.sp,
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.developer_board,
                      size: 28.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //title, subTitle, and wifi icon
                Expanded(
                  flex: 9,
                  child: Container(
                    height: 71.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Device Object',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
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
                          top: 0, //replace it with bottom for off
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 71.sp,
                            width: 46.sp,
                            decoration: BoxDecoration(
                              color: AppColors
                                  .greyTenth, //replace with .cremy for on
                              borderRadius: BorderRadius.circular(10.sp),
                            ),
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(vertical: 10.sp),
                              physics: const NeverScrollableScrollPhysics(),
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
                          bottom: 5.sp, //replace it with top for on
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
          ),
          SizedBox(height: 10.sp),

          //divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Divider(
              thickness: 1.sp,
              color: AppColors.greyThree,
            ),
          ),

          //third device objects
          Container(
            height: 50.sp,
            width: 1.sw,
            color: AppColors.white,
            padding: EdgeInsets.only(
              left: 22.sp,
              right: 50.sp,
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 58.sp,
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.developer_board,
                      size: 28.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //title, subTitle, and wifi icon
                Expanded(
                  flex: 9,
                  child: Container(
                    height: 50.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Device Object',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),

                //switch button
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50.sp,
                    color: AppColors.white,
                    child: Icon(
                      Icons.alarm,
                      color: AppColors.themeColorOne,
                      size: 25.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Divider(
              thickness: 1.sp,
              color: AppColors.greyThree,
            ),
          ),

          //fourth device objects
          Container(
            height: 50.sp,
            width: 1.sw,
            color: AppColors.white,
            padding: EdgeInsets.only(
              left: 22.sp,
              right: 50.sp,
            ),
            child: Row(
              children: [
                //leading icon
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 58.sp,
                    margin: EdgeInsets.symmetric(horizontal: 5.sp),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(15.sp),
                    ),
                    child: Icon(
                      Icons.developer_board,
                      size: 28.sp,
                      color: AppColors.themeColorOne,
                    ),
                  ),
                ),

                //title, subTitle, and wifi icon
                Expanded(
                  flex: 9,
                  child: Container(
                    height: 50.sp,
                    color: AppColors.white,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Device Object',
                      textAlign: TextAlign.left,
                      style: GoogleFonts.poppins(
                        color: AppColors.greyTwo,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),

                //switch button
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50.sp,
                    color: AppColors.white,
                    child: Icon(
                      Icons.alarm,
                      color: AppColors.themeColorOne,
                      size: 25.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.sp),

          //divider
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Divider(
              thickness: 1.sp,
              color: AppColors.greyThree,
            ),
          ),
        ],
      ),
    );
  }
}
