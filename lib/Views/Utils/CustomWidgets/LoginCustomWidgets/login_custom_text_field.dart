import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class CustomLoginTextField extends StatelessWidget {
  final bool? isPassword;
  final String? hintText;
  final IconData? icon;
  final bool? postIconCheck;
  final bool? preIconCheck;
  final TextEditingController controller;

  const CustomLoginTextField({
    super.key,
    required this.isPassword,
    required this.hintText,
    required this.icon,
    required this.postIconCheck,
    required this.preIconCheck,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38.sp,
      width: 38.sp,
      margin: EdgeInsets.symmetric(horizontal: 50.sp),
      color: Colors.transparent,
      child: TextField(
        controller: controller,
        style: GoogleFonts.poppins(
          fontSize: 12.0.sp,
          fontWeight: FontWeight.normal,
          color: AppColors.themeColorOne,
        ),
        cursorColor: AppColors.themeColorOne,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.sp),
          prefixIcon: preIconCheck == true
              ? Icon(
                  icon,
                  color: const Color(0xffA9A8DB),
                  size: 17.sp,
                )
              : Container(),
          suffixIcon: postIconCheck == true
              ? Icon(
                  Icons.remove_red_eye,
                  color: const Color(0xffA9A8DB),
                  size: 20.sp,
                )
              : const Icon(
                  Icons.remove_red_eye,
                  color: Colors.transparent,
                ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.themeColorOne, width: 1.sp),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.lightTheme, width: 1.1.sp),
          ),
          hintText: hintText ?? '',
          hintStyle: GoogleFonts.poppins(
            fontSize: 12.0.sp,
            fontStyle: FontStyle.normal,
            color: AppColors.greyOne,
          ),
        ),
      ),
    );
  }
}
