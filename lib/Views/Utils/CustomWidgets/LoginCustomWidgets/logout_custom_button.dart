import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class CustomLogoutButton extends StatefulWidget {
  const CustomLogoutButton({Key? key}) : super(key: key);

  @override
  State<CustomLogoutButton> createState() => _CustomLogoutButtonState();
}

enum MenuItem {
  logout,
}

class _CustomLogoutButtonState extends State<CustomLogoutButton> {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.logout_sharp,
        color: AppColors.themeColorOne,
        size: 30.sp,
      ),
      onSelected: (value) {
        if (value == MenuItem.logout) {
          //call the logout api here
          debugPrint('logout button is pressed');
        }
      },
      padding: EdgeInsets.zero,
      position: PopupMenuPosition.under,
      color: AppColors.greyFour,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.sp),
        side: const BorderSide(color: AppColors.greyThree),
      ),
      offset: Offset(-5.sp, -3.sp),
      constraints: BoxConstraints(
        minWidth: 100.sp,
        maxWidth: 100.sp,
      ),
      enabled: true,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: MenuItem.logout,
          height: 25.sp,
          textStyle: GoogleFonts.poppins(
            color: AppColors.greyTwo,
            fontSize: 15.sp,
            fontWeight: FontWeight.normal,
          ),
          child: const Text(
            'Logout',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
