import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veevo_connect/Controllers/Cubits/DashboardCubits/HomeCubits/drop_down_button_cubit.dart';
import 'package:veevo_connect/Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/drop_down_up_down_cubit.dart';
import 'package:veevo_connect/Views/Utils/Data/app_colors.dart';

import '../../../../Controllers/Cubits/DevicesCubit/DeviceDetailsCubit/drop_down_up_down_numbers_cubit.dart';

class CustomDropDownNumbers extends StatefulWidget {
  final String categoryState;
  final int toShow;
  const CustomDropDownNumbers({super.key, required this.categoryState, required this.toShow});

  @override
  State<CustomDropDownNumbers> createState() => _CustomDropDownNumbersState();
}

//List<String> temp=["Devices","Places","DevicesGroups"];

class _CustomDropDownNumbersState extends State<CustomDropDownNumbers> {

//var temp = Menuitemss;



  @override
  Widget build(BuildContext context) {
    print(widget.categoryState);
//print(MenuItem.values[0].name);
    //print(temp);
//temp.remove(MenuItem.MyFavorites);
//temp.removeAt(0);
//     if(Menuitemss.length==4)
//       {
//         temp.removeAt(0);
//       }
    // print(temp);
    return Container(
      height: 26.sp,
      width: 20.sp,
      alignment: Alignment.centerRight,

      child: PopupMenuButton(
        onSelected: (value) {
          print(value);
          // var stateofcategory=temp[value];
          // print(stateofcategory);
          // temp[value]=widget.categoryState;
          // print(temp[value]);

          context.read<DropDownUpDownNumbersCubit>().categoryNumbers(value+1,context,widget.categoryState);
//           if (value == MenuItem.values[0].index) {
// //temp.clear();
//          temp=Menuitemss.toList();
//          print(temp);
//             temp.removeAt(0);
//             context.read<DropDownButtonCubit>().category('MyFavorites');
// setState(() {
//
// });
//           }
//           else if (value ==MenuItem.values[1].index) {
//            // temp.clear();
//             temp=Menuitemss.toList();
//             temp.removeAt(1);
//             context.read<DropDownButtonCubit>().category('Devices');
//
//           }
//           else if (value == MenuItem.values[2].index) {
//
//             temp=Menuitemss.toList();
//             temp.removeAt(2);
//             context.read<DropDownButtonCubit>().category('Places');
//
//           }
//           else if (value == MenuItem.values[3].index) {
//
//             temp=Menuitemss.toList();
//             temp.removeAt(3);
//             context.read<DropDownButtonCubit>().category('DeviceGroups');
//
//           }

        },
        padding: EdgeInsets.zero,
        position: PopupMenuPosition.under,
        color: AppColors.greyFour,
        elevation: 0,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp)),
        // offset: Offset(-0.sp, -1.sp),
        // constraints: BoxConstraints(
        //   minWidth: 110.sp,
        //   maxWidth: 110.sp,
        // ),
        // initialValue: MenuItem.values[0].index,
        enabled: true,
        //initialValue:MenuItem.myFavourite ,
        // itemBuilder: (context) => [
        //   //favorites
        //   PopupMenuItem(
        //     value: MenuItem.myFavourite,
        //     padding: EdgeInsets.only(left: 5.sp),
        //     height: 30.sp,
        //     textStyle: GoogleFonts.poppins(
        //       color: AppColors.greyTwo,
        //       fontSize: 12.sp,
        //       fontWeight: FontWeight.normal,
        //     ),
        //     child: const Text(
        //       'My Favourites',
        //       textAlign: TextAlign.left,
        //     ),
        //   ),
        //
        //   //devices
        //   PopupMenuItem(
        //     value: MenuItem.devices,
        //     height: 30.sp,
        //     padding: EdgeInsets.only(left: 5.sp),
        //     textStyle: GoogleFonts.poppins(
        //       color: AppColors.greyTwo,
        //       fontSize: 12.sp,
        //       fontWeight: FontWeight.normal,
        //     ),
        //     child: const Text(
        //       'Devices',
        //       textAlign: TextAlign.left,
        //     ),
        //   ),
        //
        //   //places
        //   PopupMenuItem(
        //     value: MenuItem.places,
        //     height: 30.sp,
        //     padding: EdgeInsets.only(left: 5.sp),
        //     textStyle: GoogleFonts.poppins(
        //       color: AppColors.greyTwo,
        //       fontSize: 12.sp,
        //       fontWeight: FontWeight.normal,
        //     ),
        //     child: const Text(
        //       'Places',
        //       textAlign: TextAlign.left,
        //     ),
        //   ),
        //
        //   //device groups
        //   PopupMenuItem(
        //     value: MenuItem.devicesGroups,
        //     height: 30.sp,
        //     padding: EdgeInsets.only(left: 5.sp),
        //     textStyle: GoogleFonts.poppins(
        //       color: AppColors.greyTwo,
        //       fontSize: 12.sp,
        //       fontWeight: FontWeight.normal,
        //     ),
        //     child: const Text(
        //       'Device Groups',
        //       textAlign: TextAlign.left,
        //     ),
        //   ),
        // ],
        itemBuilder:(context)=>List.generate(widget.categoryState=="hr"?24:60, (index) => PopupMenuItem(

            value: index,
            height: 30.sp,
            padding: EdgeInsets.only(left: 5.sp),
            textStyle: GoogleFonts.poppins(
              color: AppColors.greyTwo,
              fontSize: 12.sp,
              fontWeight: FontWeight.normal,),
            child:
            Text((index+1).toString(),textAlign: TextAlign.center,)
          // widget.categoryState != MenuItem.values[index].name?Text(
          //
          //   MenuItem.values[index].name,
          //   textAlign: TextAlign.left,): const SizedBox(height: 0,width: 0,)

        ),

        )
        ,

        child: Container(
          height: 60.sp,
          width: 30.sp,
          decoration: BoxDecoration(
            // color: AppColors.greyFour,
            //color: Colors.red,
            borderRadius: BorderRadius.circular(4.sp),
          ),
          child: FittedBox(
              child:

              Text(
                widget.toShow.toString(),
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.white,
                ),
              )
          ),
        ),
      ),
    );
  }
}
