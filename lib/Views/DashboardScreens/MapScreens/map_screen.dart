import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';
import 'package:veevo_connect/Views/Utils/Data/app_images.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: AppColors.white,
      child: Stack(
        children: [
          //map container
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Image.asset(
              AppImages.mapPlaceHolder,
              fit: BoxFit.cover,
            ),
          ),

          //location detail container
          Positioned(
            bottom: 40.sp,
            left: 96.sp,
            child: Card(
              elevation: 5.sp,
              child: Container(
                height: 217.sp,
                width: 243.sp,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: ListView(
                  shrinkWrap: true,
                  padding: EdgeInsets.symmetric(vertical: 6.sp),
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //title design
                    Container(
                      height: 50.sp,
                      color: AppColors.white,
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(
                        left: 11.sp,
                        right: 11.sp,
                      ),
                      child: Row(
                        children: [
                          //title and sub title
                          Expanded(
                            flex: 3,
                            child: ListView(
                              shrinkWrap: true,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                Text(
                                  'Device',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    color: AppColors.greyTwo,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  'Group name',
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.poppins(
                                    color: AppColors.greyTwo,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          //wifi icon
                          Expanded(
                            flex: 6,
                            child: Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(bottom: 10.sp),
                              child: Icon(
                                Icons.wifi,
                                color: AppColors.greenTwo,
                                size: 15.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //divider
                    Divider(
                      thickness: 1.sp,
                      color: AppColors.greyThree,
                    ),

                    //details
                    ListView(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        //first row
                        Container(
                          height: 70.sp,
                          width: 1.sw,
                          color: AppColors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.sp),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(bottom: 30.sp),
                                  child: Icon(
                                    Icons.energy_savings_leaf_rounded,
                                    color: AppColors.yellowOne,
                                    size: 22.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.centerLeft,
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Text(
                                        'Voltage',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        '227',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.sp,
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
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 30.sp),
                                  child: Icon(
                                    Icons.flash_on,
                                    color: AppColors.orangeOne,
                                    size: 22.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.centerLeft,
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Text(
                                        'Current',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        '22',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //second row
                        Container(
                          height: 70.sp,
                          width: 1.sw,
                          color: AppColors.white,
                          padding: EdgeInsets.symmetric(horizontal: 30.sp),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.only(bottom: 30.sp),
                                  child: Icon(
                                    Icons.device_thermostat,
                                    color: AppColors.yellowOne,
                                    size: 22.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.centerLeft,
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      FittedBox(
                                        child: Text(
                                          'Temperature',
                                          style: GoogleFonts.poppins(
                                            color: AppColors.greyNinth,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        '27',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.sp,
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
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.center,
                                  padding: EdgeInsets.only(bottom: 30.sp),
                                  child: Icon(
                                    Icons.water_drop,
                                    color: AppColors.blueTwo,
                                    size: 22.sp,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  height: 70.sp,
                                  color: AppColors.white,
                                  alignment: Alignment.centerLeft,
                                  child: ListView(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    children: [
                                      Text(
                                        'Humadity',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyNinth,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      Text(
                                        '60',
                                        style: GoogleFonts.poppins(
                                          color: AppColors.greyTwo,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 24.sp,
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
