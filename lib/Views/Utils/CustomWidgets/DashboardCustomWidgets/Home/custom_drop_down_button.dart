import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/drop_down_button_cubit.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class CustomDropDownButton extends StatefulWidget {
  final String categoryState;

  const CustomDropDownButton({super.key, required this.categoryState});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

enum MenuItem {
  myFavourite,
  devices,
  places,
  devicesGroups,
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.sp,
      width: 120.sp,
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(
        left: 275.sp,
        right: 19.sp,
      ),
      child: PopupMenuButton(
        onSelected: (value) {
          if (value == MenuItem.myFavourite) {
            context.read<DropDownButtonCubit>().category('My Favorites');
          } else if (value == MenuItem.devices) {
            context.read<DropDownButtonCubit>().category('Devices');
          } else if (value == MenuItem.places) {
            context.read<DropDownButtonCubit>().category('Places');
          } else if (value == MenuItem.devicesGroups) {
            context.read<DropDownButtonCubit>().category('Device Groups');
          }
        },
        padding: EdgeInsets.zero,
        position: PopupMenuPosition.under,
        color: AppColors.greyFour,
        elevation: 0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
        // offset: Offset(-0.sp, -1.sp),
        constraints: BoxConstraints(
          minWidth: 110.sp,
          maxWidth: 110.sp,
        ),
        enabled: true,
        itemBuilder: (context) => [
          //favorites
          PopupMenuItem(
            value: MenuItem.myFavourite,
            padding: EdgeInsets.only(left: 5.sp),
            height: 30.sp,
            textStyle: GoogleFonts.poppins(
              color: AppColors.greyTwo,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
            child: const Text(
              'My Favourites',
              textAlign: TextAlign.left,
            ),
          ),

          //devices
          PopupMenuItem(
            value: MenuItem.devices,
            height: 30.sp,
            padding: EdgeInsets.only(left: 5.sp),
            textStyle: GoogleFonts.poppins(
              color: AppColors.greyTwo,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
            child: const Text(
              'Devices',
              textAlign: TextAlign.left,
            ),
          ),

          //places
          PopupMenuItem(
            value: MenuItem.places,
            height: 30.sp,
            padding: EdgeInsets.only(left: 5.sp),
            textStyle: GoogleFonts.poppins(
              color: AppColors.greyTwo,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
            child: const Text(
              'Places',
              textAlign: TextAlign.left,
            ),
          ),

          //device groups
          PopupMenuItem(
            value: MenuItem.devicesGroups,
            height: 30.sp,
            padding: EdgeInsets.only(left: 5.sp),
            textStyle: GoogleFonts.poppins(
              color: AppColors.greyTwo,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,
            ),
            child: const Text(
              'Device Groups',
              textAlign: TextAlign.left,
            ),
          ),
        ],
        child: Container(
          height: 26.sp,
          width: 120.sp,
          decoration: BoxDecoration(
            color: AppColors.greyFour,
            //color: Colors.red,
            borderRadius: BorderRadius.circular(4.sp),
          ),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: 10.sp,
            ),
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  child: Text(
                    widget.categoryState,
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.greyTwo,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 3.sp,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: AppColors.greyTwo,
                  size: 18.sp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
