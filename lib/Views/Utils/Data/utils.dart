import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class Utils {
  static void showSnackBar({
    required BuildContext context,
    required String message,
    required String status
   // required bool theme,
  }) {
    final snackBar = SnackBar(
      duration: const Duration(seconds: 1),
      backgroundColor:  AppColors.themeColorTwo ,
      content: SizedBox(
        height: 50.sp,
        width: 1.sw,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(message,style: GoogleFonts.poppins(
            fontSize: 20.sp,
            color: status=="error"?AppColors.red:AppColors.greenThree,
            fontWeight: FontWeight.w400,
          ),),
        ),
        // child: Column(
        //   children: [
        //     Expanded(
        //       flex: 6,
        //       child:Align(
        //         alignment: Alignment.topLeft,
        //         child: Text(status,style: GoogleFonts.poppins(
        //           fontSize: 20.sp,
        //           color: status=="error"?AppColors.red:AppColors.greenThree,
        //           fontWeight: FontWeight.w400,
        //         ),),
        //       )
        //     ),
        //     // Expanded(
        //     //   flex: 5,
        //     //   child: Align(
        //     //     alignment: Alignment.centerLeft,
        //     //     child: Text(
        //     //       message,
        //     //       style: GoogleFonts.poppins(
        //     //         fontSize: 20.sp,
        //     //         color: AppColors.greyTwo,
        //     //         fontWeight: FontWeight.w400,
        //     //       ),
        //     //     ),
        //     //   ),
        //     // ),
        //   ],
        // ),
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

}
