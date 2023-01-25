import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/drop_down_button_cubit.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/Home/custom_drop_down_button.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/Home/device_groups_category.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/Home/devices_category.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/Home/favorite_category.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/Home/places_category.dart';
import 'package:veevo_connect/Views/Utils/CustomWidgets/DashboardCustomWidgets/Home/top_design.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1.sh,
      width: 1.sw,
      color: AppColors.white,
      child: BlocBuilder<DropDownButtonCubit, String>(
        builder: (context, categoryState) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              //top design
              const TopDesign(),
              SizedBox(height: 19.sp),

              //drop down button
              CustomDropDownButton(categoryState: categoryState),
              SizedBox(height: 21.sp),

              //Categories Containers
              Builder(
                builder: (context) {
                  if (categoryState == 'Devices') {
                    return DevicesCategory(categoryState: categoryState);
                  } else if (categoryState == 'Places') {
                    return PlacesCategory(categoryState: categoryState);
                  } else if (categoryState == 'DevicesGroups') {
                    return DeviceGroupsCategory(categoryState: categoryState);
                  } else {
                    return FavoriteCategoryContainer(
                        categoryState: categoryState);
                  }
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
