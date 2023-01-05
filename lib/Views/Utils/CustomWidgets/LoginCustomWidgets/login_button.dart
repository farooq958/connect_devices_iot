import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Views/DashboardScreens/dashboard_pageview_screen.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';
import 'package:veevo_connect/Views/Utils/Data/app_strings.dart';
import 'package:veevo_connect/Views/Utils/PageTransitions/slide_page_transition.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: () {
        Navigator.push(
          context,
          CustomSlidePageRoute(
            child: const DashboardPageViewScreen(),
            direction: AxisDirection.left,
          ),
        );
      },
      child: Container(
        height: 38.sp,
        width: 315.sp,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(horizontal: 50.sp),
        decoration: BoxDecoration(
          color: AppColors.themeColorOne,
          borderRadius: BorderRadius.circular(5.sp),
        ),
        child: FittedBox(
          child: Text(
            AppStrings.login,
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.normal,
              color: AppColors.white,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
