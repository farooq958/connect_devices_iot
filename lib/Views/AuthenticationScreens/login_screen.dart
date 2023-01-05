import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/LoginCustomWidgets/login_button.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/LoginCustomWidgets/login_custom_text_field.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';
import 'package:veevo_connect/Views/Utils/Data/app_images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          height: 1.sh,
          width: 1.sw,
          color: AppColors.white,
          child: Stack(
            children: [
              //small image at top background
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  AppImages.login_01,
                  height: 105.sp,
                  width: 149.sp,
                ),
              ),

              //small image at bottom background
              Positioned(
                bottom: 0,
                right: 0,
                child: Image.asset(
                  AppImages.login_02,
                  height: 131.sp,
                  width: 153.sp,
                ),
              ),

              //main content
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 1.sh / 1.04,
                  width: 1.sw,
                  color: Colors.transparent,
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    children: [
                      SizedBox(height: 58.sp),
                      //top image
                      Image.asset(
                        AppImages.login,
                        height: 282.sp,
                        width: 370.sp,
                      ),
                      SizedBox(height: 74.sp),

                      //veevo connect design
                      Image.asset(
                        AppImages.logo_01,
                        height: 19.sp,
                        width: 166.sp,
                      ),
                      SizedBox(height: 24.sp),

                      //username textField
                      CustomLoginTextField(
                        isPassword: false,
                        controller: AppControllers.userNameController,
                        icon: Icons.account_circle,
                        hintText: 'Username',
                        postIconCheck: false,
                        preIconCheck: true,
                      ),
                      SizedBox(height: 6.sp),

                      //password textField
                      CustomLoginTextField(
                        isPassword: true,
                        controller: AppControllers.passwordController,
                        icon: Icons.lock,
                        hintText: 'Password',
                        postIconCheck: true,
                        preIconCheck: true,
                      ),
                      SizedBox(height: 19.sp),

                      //Login button
                      const LoginButton(),
                      SizedBox(height: 101.sp),

                      //veevo tech logo
                      Image.asset(
                        AppImages.vt_logo,
                        height: 23.sp,
                        width: 174.sp,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
