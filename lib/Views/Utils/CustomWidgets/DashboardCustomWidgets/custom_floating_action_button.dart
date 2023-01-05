import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/drop_down_button_cubit.dart';
import 'package:veevo_connect/Controllers/app_controllers.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class CustomAddDeviceButton extends StatelessWidget {
  const CustomAddDeviceButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        context.read<DropDownButtonCubit>().state == "Device Groups"
            ? AppControllers.bottomNavigationBarController.jumpToPage(14)
            : context.read<DropDownButtonCubit>().state == "Places"
                ? AppControllers.bottomNavigationBarController.jumpToPage(13)
                : AppControllers.bottomNavigationBarController.jumpToPage(5);
      },
      child: Container(
        height: 43.sp,
        width: 50.sp,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: AppColors.floatingActionColor,
          borderRadius: BorderRadius.circular(8.sp),
        ),
        child: Icon(
          Icons.add,
          size: 30.sp, //54.sp,
          color: AppColors.themeColorOne,
        ),
      ),
    );
  }
}
