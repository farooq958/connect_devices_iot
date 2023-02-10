import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/deviceDetailController.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/device_details_cubit.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class DeviceDetailsScreen extends StatelessWidget {
  const DeviceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeviceDetailsCubit, DeviceDetailsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, deviceDetailsBuilder) {

        if(deviceDetailsBuilder is DeviceDetailsLoaded) {
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
                        deviceDetailsController.upperData.deviceId,
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
                        deviceDetailsController.upperData.group,
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
                        deviceDetailsController.upperData.apiKey,
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
                        deviceDetailsController.upperData.deviceUser,
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
                        deviceDetailsController.upperData.firmware,
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
                        '${deviceDetailsController.upperData.coordinates.longitude.numberDecimal}, ${deviceDetailsController.upperData.coordinates.latitude.numberDecimal}',
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
        else
          {
            return SizedBox();
          }
      },
    );
  }
}
